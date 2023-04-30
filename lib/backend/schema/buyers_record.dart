import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'buyers_record.g.dart';

abstract class BuyersRecord
    implements Built<BuyersRecord, BuyersRecordBuilder> {
  static Serializer<BuyersRecord> get serializer => _$buyersRecordSerializer;

  @BuiltValueField(wireName: 'buyer_id')
  String? get buyerId;

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

  @BuiltValueField(wireName: 'become_seller_status')
  bool? get becomeSellerStatus;

  BuiltList<String>? get cart;

  String? get phone;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BuyersRecordBuilder builder) => builder
    ..buyerId = ''
    ..status = ''
    ..profession = ''
    ..username = ''
    ..displayName = ''
    ..email = ''
    ..lastName = ''
    ..firstName = ''
    ..wishlist = ListBuilder()
    ..image = ''
    ..becomeSellerStatus = false
    ..cart = ListBuilder()
    ..phone = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('buyers');

  static Stream<BuyersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BuyersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BuyersRecord._();
  factory BuyersRecord([void Function(BuyersRecordBuilder) updates]) =
      _$BuyersRecord;

  static BuyersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBuyersRecordData({
  String? buyerId,
  String? status,
  String? profession,
  String? username,
  String? displayName,
  String? email,
  String? lastName,
  String? firstName,
  String? image,
  bool? becomeSellerStatus,
  String? phone,
}) {
  final firestoreData = serializers.toFirestore(
    BuyersRecord.serializer,
    BuyersRecord(
      (b) => b
        ..buyerId = buyerId
        ..status = status
        ..profession = profession
        ..username = username
        ..displayName = displayName
        ..email = email
        ..lastName = lastName
        ..firstName = firstName
        ..wishlist = null
        ..image = image
        ..becomeSellerStatus = becomeSellerStatus
        ..cart = null
        ..phone = phone,
    ),
  );

  return firestoreData;
}
