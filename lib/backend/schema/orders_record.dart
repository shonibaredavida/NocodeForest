import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "buyer_id" field.
  String? _buyerId;
  String get buyerId => _buyerId ?? '';
  bool hasBuyerId() => _buyerId != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "order_status" field.
  String? _orderStatus;
  String get orderStatus => _orderStatus ?? '';
  bool hasOrderStatus() => _orderStatus != null;

  // "payment_status" field.
  bool? _paymentStatus;
  bool get paymentStatus => _paymentStatus ?? false;
  bool hasPaymentStatus() => _paymentStatus != null;

  // "order_date" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  // "order_id" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "seller_info" field.
  DocumentReference? _sellerInfo;
  DocumentReference? get sellerInfo => _sellerInfo;
  bool hasSellerInfo() => _sellerInfo != null;

  // "product_info" field.
  DocumentReference? _productInfo;
  DocumentReference? get productInfo => _productInfo;
  bool hasProductInfo() => _productInfo != null;

  // "total_price" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "buyer_info" field.
  DocumentReference? _buyerInfo;
  DocumentReference? get buyerInfo => _buyerInfo;
  bool hasBuyerInfo() => _buyerInfo != null;

  // "buyer_name" field.
  String? _buyerName;
  String get buyerName => _buyerName ?? '';
  bool hasBuyerName() => _buyerName != null;

  // "seller_id" field.
  String? _sellerId;
  String get sellerId => _sellerId ?? '';
  bool hasSellerId() => _sellerId != null;

  // "cart_items" field.
  List<DocumentReference>? _cartItems;
  List<DocumentReference> get cartItems => _cartItems ?? const [];
  bool hasCartItems() => _cartItems != null;

  // "seller_ids" field.
  List<String>? _sellerIds;
  List<String> get sellerIds => _sellerIds ?? const [];
  bool hasSellerIds() => _sellerIds != null;

  // "product_ids" field.
  List<String>? _productIds;
  List<String> get productIds => _productIds ?? const [];
  bool hasProductIds() => _productIds != null;

  void _initializeFields() {
    _buyerId = snapshotData['buyer_id'] as String?;
    _productId = snapshotData['product_id'] as String?;
    _orderStatus = snapshotData['order_status'] as String?;
    _paymentStatus = snapshotData['payment_status'] as bool?;
    _orderDate = snapshotData['order_date'] as DateTime?;
    _orderId = snapshotData['order_id'] as String?;
    _sellerInfo = snapshotData['seller_info'] as DocumentReference?;
    _productInfo = snapshotData['product_info'] as DocumentReference?;
    _totalPrice = castToType<double>(snapshotData['total_price']);
    _buyerInfo = snapshotData['buyer_info'] as DocumentReference?;
    _buyerName = snapshotData['buyer_name'] as String?;
    _sellerId = snapshotData['seller_id'] as String?;
    _cartItems = getDataList(snapshotData['cart_items']);
    _sellerIds = getDataList(snapshotData['seller_ids']);
    _productIds = getDataList(snapshotData['product_ids']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  String? buyerId,
  String? productId,
  String? orderStatus,
  bool? paymentStatus,
  DateTime? orderDate,
  String? orderId,
  DocumentReference? sellerInfo,
  DocumentReference? productInfo,
  double? totalPrice,
  DocumentReference? buyerInfo,
  String? buyerName,
  String? sellerId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'buyer_id': buyerId,
      'product_id': productId,
      'order_status': orderStatus,
      'payment_status': paymentStatus,
      'order_date': orderDate,
      'order_id': orderId,
      'seller_info': sellerInfo,
      'product_info': productInfo,
      'total_price': totalPrice,
      'buyer_info': buyerInfo,
      'buyer_name': buyerName,
      'seller_id': sellerId,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.buyerId == e2?.buyerId &&
        e1?.productId == e2?.productId &&
        e1?.orderStatus == e2?.orderStatus &&
        e1?.paymentStatus == e2?.paymentStatus &&
        e1?.orderDate == e2?.orderDate &&
        e1?.orderId == e2?.orderId &&
        e1?.sellerInfo == e2?.sellerInfo &&
        e1?.productInfo == e2?.productInfo &&
        e1?.totalPrice == e2?.totalPrice &&
        e1?.buyerInfo == e2?.buyerInfo &&
        e1?.buyerName == e2?.buyerName &&
        e1?.sellerId == e2?.sellerId &&
        listEquality.equals(e1?.cartItems, e2?.cartItems) &&
        listEquality.equals(e1?.sellerIds, e2?.sellerIds) &&
        listEquality.equals(e1?.productIds, e2?.productIds);
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.buyerId,
        e?.productId,
        e?.orderStatus,
        e?.paymentStatus,
        e?.orderDate,
        e?.orderId,
        e?.sellerInfo,
        e?.productInfo,
        e?.totalPrice,
        e?.buyerInfo,
        e?.buyerName,
        e?.sellerId,
        e?.cartItems,
        e?.sellerIds,
        e?.productIds
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
