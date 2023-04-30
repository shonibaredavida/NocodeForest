import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'nocode_tools_info_record.g.dart';

abstract class NocodeToolsInfoRecord
    implements Built<NocodeToolsInfoRecord, NocodeToolsInfoRecordBuilder> {
  static Serializer<NocodeToolsInfoRecord> get serializer =>
      _$nocodeToolsInfoRecordSerializer;

  String? get title;

  String? get desc;

  BuiltList<String>? get tags;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NocodeToolsInfoRecordBuilder builder) =>
      builder
        ..title = ''
        ..desc = ''
        ..tags = ListBuilder()
        ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nocode_tools_info');

  static Stream<NocodeToolsInfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NocodeToolsInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NocodeToolsInfoRecord._();
  factory NocodeToolsInfoRecord(
          [void Function(NocodeToolsInfoRecordBuilder) updates]) =
      _$NocodeToolsInfoRecord;

  static NocodeToolsInfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNocodeToolsInfoRecordData({
  String? title,
  String? desc,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    NocodeToolsInfoRecord.serializer,
    NocodeToolsInfoRecord(
      (n) => n
        ..title = title
        ..desc = desc
        ..tags = null
        ..image = image,
    ),
  );

  return firestoreData;
}
