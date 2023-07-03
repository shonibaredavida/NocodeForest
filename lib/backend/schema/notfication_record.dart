import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotficationRecord extends FirestoreRecord {
  NotficationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "message" field.
  List<NotificationFormatStruct>? _message;
  List<NotificationFormatStruct> get message => _message ?? const [];
  bool hasMessage() => _message != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "user_id" field.
  List<String>? _userId;
  List<String> get userId => _userId ?? const [];
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _message = getStructList(
      snapshotData['message'],
      NotificationFormatStruct.fromMap,
    );
    _status = snapshotData['status'] as String?;
    _userId = getDataList(snapshotData['user_id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notfication');

  static Stream<NotficationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotficationRecord.fromSnapshot(s));

  static Future<NotficationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotficationRecord.fromSnapshot(s));

  static NotficationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotficationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotficationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotficationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotficationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotficationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotficationRecordData({
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotficationRecordDocumentEquality implements Equality<NotficationRecord> {
  const NotficationRecordDocumentEquality();

  @override
  bool equals(NotficationRecord? e1, NotficationRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.message, e2?.message) &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.userId, e2?.userId);
  }

  @override
  int hash(NotficationRecord? e) =>
      const ListEquality().hash([e?.message, e?.status, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is NotficationRecord;
}
