import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DownloadedItemsRecord extends FirestoreRecord {
  DownloadedItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "buyer_id" field.
  String? _buyerId;
  String get buyerId => _buyerId ?? '';
  bool hasBuyerId() => _buyerId != null;

  // "bought_items" field.
  List<DocumentReference>? _boughtItems;
  List<DocumentReference> get boughtItems => _boughtItems ?? const [];
  bool hasBoughtItems() => _boughtItems != null;

  void _initializeFields() {
    _buyerId = snapshotData['buyer_id'] as String?;
    _boughtItems = getDataList(snapshotData['bought_items']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('downloaded_items');

  static Stream<DownloadedItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DownloadedItemsRecord.fromSnapshot(s));

  static Future<DownloadedItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DownloadedItemsRecord.fromSnapshot(s));

  static DownloadedItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DownloadedItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DownloadedItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DownloadedItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DownloadedItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DownloadedItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDownloadedItemsRecordData({
  String? buyerId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'buyer_id': buyerId,
    }.withoutNulls,
  );

  return firestoreData;
}
