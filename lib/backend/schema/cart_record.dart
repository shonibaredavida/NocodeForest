import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "product_info" field.
  List<DocumentReference>? _productInfo;
  List<DocumentReference> get productInfo => _productInfo ?? const [];
  bool hasProductInfo() => _productInfo != null;

  // "seller_id" field.
  String? _sellerId;
  String get sellerId => _sellerId ?? '';
  bool hasSellerId() => _sellerId != null;

  // "buyer_id" field.
  String? _buyerId;
  String get buyerId => _buyerId ?? '';
  bool hasBuyerId() => _buyerId != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _productInfo = getDataList(snapshotData['product_info']);
    _sellerId = snapshotData['seller_id'] as String?;
    _buyerId = snapshotData['buyer_id'] as String?;
    _price = castToType<double>(snapshotData['price']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('cart')
          : FirebaseFirestore.instance.collectionGroup('cart');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('cart').doc();

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  String? sellerId,
  String? buyerId,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'seller_id': sellerId,
      'buyer_id': buyerId,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}
