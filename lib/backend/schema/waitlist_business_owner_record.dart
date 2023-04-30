import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'waitlist_business_owner_record.g.dart';

abstract class WaitlistBusinessOwnerRecord
    implements
        Built<WaitlistBusinessOwnerRecord, WaitlistBusinessOwnerRecordBuilder> {
  static Serializer<WaitlistBusinessOwnerRecord> get serializer =>
      _$waitlistBusinessOwnerRecordSerializer;

  String? get country;

  String? get email;

  String? get phone;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'full_name')
  String? get fullName;

  @BuiltValueField(wireName: 'website_type')
  String? get websiteType;

  String? get industry;

  @BuiltValueField(wireName: 'post_maintenance')
  String? get postMaintenance;

  String? get budget;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WaitlistBusinessOwnerRecordBuilder builder) =>
      builder
        ..country = ''
        ..email = ''
        ..phone = ''
        ..fullName = ''
        ..websiteType = ''
        ..industry = ''
        ..postMaintenance = ''
        ..budget = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('waitlist_businessOwner');

  static Stream<WaitlistBusinessOwnerRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WaitlistBusinessOwnerRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WaitlistBusinessOwnerRecord._();
  factory WaitlistBusinessOwnerRecord(
          [void Function(WaitlistBusinessOwnerRecordBuilder) updates]) =
      _$WaitlistBusinessOwnerRecord;

  static WaitlistBusinessOwnerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
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
  final firestoreData = serializers.toFirestore(
    WaitlistBusinessOwnerRecord.serializer,
    WaitlistBusinessOwnerRecord(
      (w) => w
        ..country = country
        ..email = email
        ..phone = phone
        ..createdTime = createdTime
        ..fullName = fullName
        ..websiteType = websiteType
        ..industry = industry
        ..postMaintenance = postMaintenance
        ..budget = budget,
    ),
  );

  return firestoreData;
}
