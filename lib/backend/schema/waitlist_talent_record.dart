import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'waitlist_talent_record.g.dart';

abstract class WaitlistTalentRecord
    implements Built<WaitlistTalentRecord, WaitlistTalentRecordBuilder> {
  static Serializer<WaitlistTalentRecord> get serializer =>
      _$waitlistTalentRecordSerializer;

  String? get country;

  String? get email;

  String? get phone;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'nocode_tools')
  String? get nocodeTools;

  @BuiltValueField(wireName: 'full_name')
  String? get fullName;

  @BuiltValueField(wireName: 'web_app_link')
  String? get webAppLink;

  @BuiltValueField(wireName: 'mobile_app_link')
  String? get mobileAppLink;

  @BuiltValueField(wireName: 'nocoder_status')
  String? get nocoderStatus;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WaitlistTalentRecordBuilder builder) => builder
    ..country = ''
    ..email = ''
    ..phone = ''
    ..nocodeTools = ''
    ..fullName = ''
    ..webAppLink = ''
    ..mobileAppLink = ''
    ..nocoderStatus = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('waitlist_talent');

  static Stream<WaitlistTalentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WaitlistTalentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WaitlistTalentRecord._();
  factory WaitlistTalentRecord(
          [void Function(WaitlistTalentRecordBuilder) updates]) =
      _$WaitlistTalentRecord;

  static WaitlistTalentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
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
  final firestoreData = serializers.toFirestore(
    WaitlistTalentRecord.serializer,
    WaitlistTalentRecord(
      (w) => w
        ..country = country
        ..email = email
        ..phone = phone
        ..createdTime = createdTime
        ..nocodeTools = nocodeTools
        ..fullName = fullName
        ..webAppLink = webAppLink
        ..mobileAppLink = mobileAppLink
        ..nocoderStatus = nocoderStatus,
    ),
  );

  return firestoreData;
}
