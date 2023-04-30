import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sellers_record.g.dart';

abstract class SellersRecord
    implements Built<SellersRecord, SellersRecordBuilder> {
  static Serializer<SellersRecord> get serializer => _$sellersRecordSerializer;

  @BuiltValueField(wireName: 'seller_id')
  String? get sellerId;

  String? get status;

  String? get profession;

  String? get username;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get email;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  BuiltList<String>? get wishlist;

  String? get image;

  String? get instagram;

  String? get facebook;

  String? get twitter;

  @BuiltValueField(wireName: 'store_name')
  String? get storeName;

  String? get uid;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get interest;

  String? get phone;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SellersRecordBuilder builder) => builder
    ..sellerId = ''
    ..status = ''
    ..profession = ''
    ..username = ''
    ..displayName = ''
    ..email = ''
    ..lastName = ''
    ..firstName = ''
    ..wishlist = ListBuilder()
    ..image = ''
    ..instagram = ''
    ..facebook = ''
    ..twitter = ''
    ..storeName = ''
    ..uid = ''
    ..photoUrl = ''
    ..phoneNumber = ''
    ..interest = ''
    ..phone = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sellers');

  static Stream<SellersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SellersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SellersRecord._();
  factory SellersRecord([void Function(SellersRecordBuilder) updates]) =
      _$SellersRecord;

  static SellersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSellersRecordData({
  String? sellerId,
  String? status,
  String? profession,
  String? username,
  String? displayName,
  String? email,
  String? lastName,
  String? firstName,
  String? image,
  String? instagram,
  String? facebook,
  String? twitter,
  String? storeName,
  String? uid,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? interest,
  String? phone,
}) {
  final firestoreData = serializers.toFirestore(
    SellersRecord.serializer,
    SellersRecord(
      (s) => s
        ..sellerId = sellerId
        ..status = status
        ..profession = profession
        ..username = username
        ..displayName = displayName
        ..email = email
        ..lastName = lastName
        ..firstName = firstName
        ..wishlist = null
        ..image = image
        ..instagram = instagram
        ..facebook = facebook
        ..twitter = twitter
        ..storeName = storeName
        ..uid = uid
        ..photoUrl = photoUrl
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..interest = interest
        ..phone = phone,
    ),
  );

  return firestoreData;
}
