import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WaitlistBusinessOwnerRecord extends FirestoreRecord {
  WaitlistBusinessOwnerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "website_type" field.
  String? _websiteType;
  String get websiteType => _websiteType ?? '';
  bool hasWebsiteType() => _websiteType != null;

  // "industry" field.
  String? _industry;
  String get industry => _industry ?? '';
  bool hasIndustry() => _industry != null;

  // "post_maintenance" field.
  String? _postMaintenance;
  String get postMaintenance => _postMaintenance ?? '';
  bool hasPostMaintenance() => _postMaintenance != null;

  // "budget" field.
  String? _budget;
  String get budget => _budget ?? '';
  bool hasBudget() => _budget != null;

  void _initializeFields() {
    _country = snapshotData['country'] as String?;
    _email = snapshotData['email'] as String?;
    _phone = snapshotData['phone'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _fullName = snapshotData['full_name'] as String?;
    _websiteType = snapshotData['website_type'] as String?;
    _industry = snapshotData['industry'] as String?;
    _postMaintenance = snapshotData['post_maintenance'] as String?;
    _budget = snapshotData['budget'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('waitlist_businessOwner');

  static Stream<WaitlistBusinessOwnerRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => WaitlistBusinessOwnerRecord.fromSnapshot(s));

  static Future<WaitlistBusinessOwnerRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => WaitlistBusinessOwnerRecord.fromSnapshot(s));

  static WaitlistBusinessOwnerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WaitlistBusinessOwnerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WaitlistBusinessOwnerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WaitlistBusinessOwnerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WaitlistBusinessOwnerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WaitlistBusinessOwnerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWaitlistBusinessOwnerRecordData({
  String? country,
  String? email,
  String? phone,
  DateTime? createdTime,
  String? fullName,
  String? websiteType,
  String? industry,
  String? postMaintenance,
  String? budget,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'country': country,
      'email': email,
      'phone': phone,
      'created_time': createdTime,
      'full_name': fullName,
      'website_type': websiteType,
      'industry': industry,
      'post_maintenance': postMaintenance,
      'budget': budget,
    }.withoutNulls,
  );

  return firestoreData;
}
