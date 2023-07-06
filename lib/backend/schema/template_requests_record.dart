import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TemplateRequestsRecord extends FirestoreRecord {
  TemplateRequestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "delivery_period" field.
  String? _deliveryPeriod;
  String get deliveryPeriod => _deliveryPeriod ?? '';
  bool hasDeliveryPeriod() => _deliveryPeriod != null;

  // "budget" field.
  String? _budget;
  String get budget => _budget ?? '';
  bool hasBudget() => _budget != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "nature" field.
  String? _nature;
  String get nature => _nature ?? '';
  bool hasNature() => _nature != null;

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _deliveryPeriod = snapshotData['delivery_period'] as String?;
    _budget = snapshotData['budget'] as String?;
    _desc = snapshotData['desc'] as String?;
    _phone = snapshotData['phone'] as String?;
    _nature = snapshotData['nature'] as String?;
    _createdDate = snapshotData['created_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('templateRequests');

  static Stream<TemplateRequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TemplateRequestsRecord.fromSnapshot(s));

  static Future<TemplateRequestsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TemplateRequestsRecord.fromSnapshot(s));

  static TemplateRequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TemplateRequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TemplateRequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TemplateRequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TemplateRequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TemplateRequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTemplateRequestsRecordData({
  String? name,
  String? email,
  String? deliveryPeriod,
  String? budget,
  String? desc,
  String? phone,
  String? nature,
  DateTime? createdDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'email': email,
      'delivery_period': deliveryPeriod,
      'budget': budget,
      'desc': desc,
      'phone': phone,
      'nature': nature,
      'created_date': createdDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class TemplateRequestsRecordDocumentEquality
    implements Equality<TemplateRequestsRecord> {
  const TemplateRequestsRecordDocumentEquality();

  @override
  bool equals(TemplateRequestsRecord? e1, TemplateRequestsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.deliveryPeriod == e2?.deliveryPeriod &&
        e1?.budget == e2?.budget &&
        e1?.desc == e2?.desc &&
        e1?.phone == e2?.phone &&
        e1?.nature == e2?.nature &&
        e1?.createdDate == e2?.createdDate;
  }

  @override
  int hash(TemplateRequestsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.email,
        e?.deliveryPeriod,
        e?.budget,
        e?.desc,
        e?.phone,
        e?.nature,
        e?.createdDate
      ]);

  @override
  bool isValidKey(Object? o) => o is TemplateRequestsRecord;
}
