import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'project_catergories_info_record.g.dart';

abstract class ProjectCatergoriesInfoRecord
    implements
        Built<ProjectCatergoriesInfoRecord,
            ProjectCatergoriesInfoRecordBuilder> {
  static Serializer<ProjectCatergoriesInfoRecord> get serializer =>
      _$projectCatergoriesInfoRecordSerializer;

  String? get title;

  String? get desc;

  BuiltList<String>? get tags;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProjectCatergoriesInfoRecordBuilder builder) =>
      builder
        ..title = ''
        ..desc = ''
        ..tags = ListBuilder()
        ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('project_catergories_info');

  static Stream<ProjectCatergoriesInfoRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProjectCatergoriesInfoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProjectCatergoriesInfoRecord._();
  factory ProjectCatergoriesInfoRecord(
          [void Function(ProjectCatergoriesInfoRecordBuilder) updates]) =
      _$ProjectCatergoriesInfoRecord;

  static ProjectCatergoriesInfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProjectCatergoriesInfoRecordData({
  String? title,
  String? desc,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    ProjectCatergoriesInfoRecord.serializer,
    ProjectCatergoriesInfoRecord(
      (p) => p
        ..title = title
        ..desc = desc
        ..tags = null
        ..image = image,
    ),
  );

  return firestoreData;
}
