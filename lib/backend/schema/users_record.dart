import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'become_a_seller')
  bool? get becomeASeller;

  String? get status;

  BuiltList<String>? get wishlist;

  String? get profession;

  String? get username;

  String? get interest;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  String? get location;

  String? get bio;

  BuiltList<DocumentReference>? get cart;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..becomeASeller = false
    ..status = ''
    ..wishlist = ListBuilder()
    ..profession = ''
    ..username = ''
    ..interest = ''
    ..lastName = ''
    ..firstName = ''
    ..location = ''
    ..bio = ''
    ..cart = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
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
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..becomeASeller = becomeASeller
        ..status = status
        ..wishlist = null
        ..profession = profession
        ..username = username
        ..interest = interest
        ..lastName = lastName
        ..firstName = firstName
        ..location = location
        ..bio = bio
        ..cart = null,
    ),
  );

  return firestoreData;
}
