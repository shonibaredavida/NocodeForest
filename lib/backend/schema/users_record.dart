import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "become_a_seller" field.
  bool? _becomeASeller;
  bool get becomeASeller => _becomeASeller ?? false;
  bool hasBecomeASeller() => _becomeASeller != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "wishlist" field.
  List<String>? _wishlist;
  List<String> get wishlist => _wishlist ?? const [];
  bool hasWishlist() => _wishlist != null;

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  bool hasProfession() => _profession != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "interest" field.
  String? _interest;
  String get interest => _interest ?? '';
  bool hasInterest() => _interest != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "cart" field.
  List<DocumentReference>? _cart;
  List<DocumentReference> get cart => _cart ?? const [];
  bool hasCart() => _cart != null;

  // "modified_time" field.
  List<DateTime>? _modifiedTime;
  List<DateTime> get modifiedTime => _modifiedTime ?? const [];
  bool hasModifiedTime() => _modifiedTime != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _becomeASeller = snapshotData['become_a_seller'] as bool?;
    _status = snapshotData['status'] as String?;
    _wishlist = getDataList(snapshotData['wishlist']);
    _profession = snapshotData['profession'] as String?;
    _username = snapshotData['username'] as String?;
    _interest = snapshotData['interest'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _location = snapshotData['location'] as String?;
    _bio = snapshotData['bio'] as String?;
    _cart = getDataList(snapshotData['cart']);
    _modifiedTime = getDataList(snapshotData['modified_time']);
    _admin = snapshotData['admin'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? becomeASeller,
  String? status,
  String? profession,
  String? username,
  String? interest,
  String? lastName,
  String? firstName,
  String? location,
  String? bio,
  bool? admin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'become_a_seller': becomeASeller,
      'status': status,
      'profession': profession,
      'username': username,
      'interest': interest,
      'last_name': lastName,
      'first_name': firstName,
      'location': location,
      'bio': bio,
      'admin': admin,
    }.withoutNulls,
  );

  return firestoreData;
}
