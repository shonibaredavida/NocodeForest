import 'dart:async';

import 'package:collection/collection.dart';

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

  // "withdrawals" field.
  List<WithdrawalStruct>? _withdrawals;
  List<WithdrawalStruct> get withdrawals => _withdrawals ?? const [];
  bool hasWithdrawals() => _withdrawals != null;

  // "earnings" field.
  List<EarningsStruct>? _earnings;
  List<EarningsStruct> get earnings => _earnings ?? const [];
  bool hasEarnings() => _earnings != null;

  // "downloads" field.
  List<DocumentReference>? _downloads;
  List<DocumentReference> get downloads => _downloads ?? const [];
  bool hasDownloads() => _downloads != null;

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
    _withdrawals = getStructList(
      snapshotData['withdrawals'],
      WithdrawalStruct.fromMap,
    );
    _earnings = getStructList(
      snapshotData['earnings'],
      EarningsStruct.fromMap,
    );
    _downloads = getDataList(snapshotData['downloads']);
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

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
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

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.becomeASeller == e2?.becomeASeller &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.wishlist, e2?.wishlist) &&
        e1?.profession == e2?.profession &&
        e1?.username == e2?.username &&
        e1?.interest == e2?.interest &&
        e1?.lastName == e2?.lastName &&
        e1?.firstName == e2?.firstName &&
        e1?.location == e2?.location &&
        e1?.bio == e2?.bio &&
        listEquality.equals(e1?.cart, e2?.cart) &&
        listEquality.equals(e1?.modifiedTime, e2?.modifiedTime) &&
        e1?.admin == e2?.admin &&
        listEquality.equals(e1?.withdrawals, e2?.withdrawals) &&
        listEquality.equals(e1?.earnings, e2?.earnings) &&
        listEquality.equals(e1?.downloads, e2?.downloads);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.becomeASeller,
        e?.status,
        e?.wishlist,
        e?.profession,
        e?.username,
        e?.interest,
        e?.lastName,
        e?.firstName,
        e?.location,
        e?.bio,
        e?.cart,
        e?.modifiedTime,
        e?.admin,
        e?.withdrawals,
        e?.earnings,
        e?.downloads
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
