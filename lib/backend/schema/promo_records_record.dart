import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromoRecordsRecord extends FirestoreRecord {
  PromoRecordsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "company_info" field.
  String? _companyInfo;
  String get companyInfo => _companyInfo ?? '';
  bool hasCompanyInfo() => _companyInfo != null;

  // "offer_choice" field.
  String? _offerChoice;
  String get offerChoice => _offerChoice ?? '';
  bool hasOfferChoice() => _offerChoice != null;

  // "industry" field.
  String? _industry;
  String get industry => _industry ?? '';
  bool hasIndustry() => _industry != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _phone = snapshotData['phone'] as String?;
    _email = snapshotData['email'] as String?;
    _companyInfo = snapshotData['company_info'] as String?;
    _offerChoice = snapshotData['offer_choice'] as String?;
    _industry = snapshotData['industry'] as String?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('promo_records');

  static Stream<PromoRecordsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromoRecordsRecord.fromSnapshot(s));

  static Future<PromoRecordsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromoRecordsRecord.fromSnapshot(s));

  static PromoRecordsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromoRecordsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromoRecordsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromoRecordsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromoRecordsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromoRecordsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromoRecordsRecordData({
  String? name,
  String? phone,
  String? email,
  String? companyInfo,
  String? offerChoice,
  String? industry,
  DateTime? timeCreated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'phone': phone,
      'email': email,
      'company_info': companyInfo,
      'offer_choice': offerChoice,
      'industry': industry,
      'time_created': timeCreated,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromoRecordsRecordDocumentEquality
    implements Equality<PromoRecordsRecord> {
  const PromoRecordsRecordDocumentEquality();

  @override
  bool equals(PromoRecordsRecord? e1, PromoRecordsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.companyInfo == e2?.companyInfo &&
        e1?.offerChoice == e2?.offerChoice &&
        e1?.industry == e2?.industry &&
        e1?.timeCreated == e2?.timeCreated;
  }

  @override
  int hash(PromoRecordsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.phone,
        e?.email,
        e?.companyInfo,
        e?.offerChoice,
        e?.industry,
        e?.timeCreated
      ]);

  @override
  bool isValidKey(Object? o) => o is PromoRecordsRecord;
}
