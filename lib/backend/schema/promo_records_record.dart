import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'promo_records_record.g.dart';

abstract class PromoRecordsRecord
    implements Built<PromoRecordsRecord, PromoRecordsRecordBuilder> {
  static Serializer<PromoRecordsRecord> get serializer =>
      _$promoRecordsRecordSerializer;

  String? get name;

  String? get phone;

  String? get email;

  @BuiltValueField(wireName: 'company_info')
  String? get companyInfo;

  @BuiltValueField(wireName: 'offer_choice')
  String? get offerChoice;

  String? get industry;

  @BuiltValueField(wireName: 'time_created')
  DateTime? get timeCreated;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PromoRecordsRecordBuilder builder) => builder
    ..name = ''
    ..phone = ''
    ..email = ''
    ..companyInfo = ''
    ..offerChoice = ''
    ..industry = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('promo_records');

  static Stream<PromoRecordsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PromoRecordsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PromoRecordsRecord._();
  factory PromoRecordsRecord(
          [void Function(PromoRecordsRecordBuilder) updates]) =
      _$PromoRecordsRecord;

  static PromoRecordsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPromoRecordsRecordData({
  String? name,
  String? phone,
  String? email,
  String? companyInfo,
  String? offerChoice,
  String? industry,
  DateTime? timeCreated,
}) {
  final firestoreData = serializers.toFirestore(
    PromoRecordsRecord.serializer,
    PromoRecordsRecord(
      (p) => p
        ..name = name
        ..phone = phone
        ..email = email
        ..companyInfo = companyInfo
        ..offerChoice = offerChoice
        ..industry = industry
        ..timeCreated = timeCreated,
    ),
  );

  return firestoreData;
}
