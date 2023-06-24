import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PreviousViewRecord extends FirestoreRecord {
  PreviousViewRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "products" field.
  List<DocumentReference>? _products;
  List<DocumentReference> get products => _products ?? const [];
  bool hasProducts() => _products != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _products = getDataList(snapshotData['products']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('previous_view');

  static Stream<PreviousViewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PreviousViewRecord.fromSnapshot(s));

  static Future<PreviousViewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PreviousViewRecord.fromSnapshot(s));

  static PreviousViewRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PreviousViewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PreviousViewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PreviousViewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PreviousViewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PreviousViewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPreviousViewRecordData({
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}
