import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SellerInfoRecord extends FirestoreRecord {
  SellerInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  bool hasProfession() => _profession != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _profession = snapshotData['profession'] as String?;
    _username = snapshotData['username'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('seller_info')
          : FirebaseFirestore.instance.collectionGroup('seller_info');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('seller_info').doc();

  static Stream<SellerInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SellerInfoRecord.fromSnapshot(s));

  static Future<SellerInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SellerInfoRecord.fromSnapshot(s));

  static SellerInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SellerInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SellerInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SellerInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SellerInfoRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createSellerInfoRecordData({
  String? profession,
  String? username,
  String? displayName,
  String? lastName,
  String? firstName,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'profession': profession,
      'username': username,
      'display_name': displayName,
      'last_name': lastName,
      'first_name': firstName,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}
