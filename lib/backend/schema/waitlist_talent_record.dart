import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WaitlistTalentRecord extends FirestoreRecord {
  WaitlistTalentRecord._(
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

  // "nocode_tools" field.
  String? _nocodeTools;
  String get nocodeTools => _nocodeTools ?? '';
  bool hasNocodeTools() => _nocodeTools != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "web_app_link" field.
  String? _webAppLink;
  String get webAppLink => _webAppLink ?? '';
  bool hasWebAppLink() => _webAppLink != null;

  // "mobile_app_link" field.
  String? _mobileAppLink;
  String get mobileAppLink => _mobileAppLink ?? '';
  bool hasMobileAppLink() => _mobileAppLink != null;

  // "nocoder_status" field.
  String? _nocoderStatus;
  String get nocoderStatus => _nocoderStatus ?? '';
  bool hasNocoderStatus() => _nocoderStatus != null;

  void _initializeFields() {
    _country = snapshotData['country'] as String?;
    _email = snapshotData['email'] as String?;
    _phone = snapshotData['phone'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _nocodeTools = snapshotData['nocode_tools'] as String?;
    _fullName = snapshotData['full_name'] as String?;
    _webAppLink = snapshotData['web_app_link'] as String?;
    _mobileAppLink = snapshotData['mobile_app_link'] as String?;
    _nocoderStatus = snapshotData['nocoder_status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('waitlist_talent');

  static Stream<WaitlistTalentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WaitlistTalentRecord.fromSnapshot(s));

  static Future<WaitlistTalentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WaitlistTalentRecord.fromSnapshot(s));

  static WaitlistTalentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WaitlistTalentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WaitlistTalentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WaitlistTalentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WaitlistTalentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WaitlistTalentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWaitlistTalentRecordData({
  String? country,
  String? email,
  String? phone,
  DateTime? createdTime,
  String? nocodeTools,
  String? fullName,
  String? webAppLink,
  String? mobileAppLink,
  String? nocoderStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'country': country,
      'email': email,
      'phone': phone,
      'created_time': createdTime,
      'nocode_tools': nocodeTools,
      'full_name': fullName,
      'web_app_link': webAppLink,
      'mobile_app_link': mobileAppLink,
      'nocoder_status': nocoderStatus,
    }.withoutNulls,
  );

  return firestoreData;
}
