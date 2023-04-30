import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'admins_record.g.dart';

abstract class AdminsRecord
    implements Built<AdminsRecord, AdminsRecordBuilder> {
  static Serializer<AdminsRecord> get serializer => _$adminsRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AdminsRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..lastName = ''
    ..firstName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('admins');

  static Stream<AdminsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AdminsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AdminsRecord._();
  factory AdminsRecord([void Function(AdminsRecordBuilder) updates]) =
      _$AdminsRecord;

  static AdminsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAdminsRecordData({
  String? email,
  String? displayName,
  String? lastName,
  String? firstName,
}) {
  final firestoreData = serializers.toFirestore(
    AdminsRecord.serializer,
    AdminsRecord(
      (a) => a
        ..email = email
        ..displayName = displayName
        ..lastName = lastName
        ..firstName = firstName,
    ),
  );

  return firestoreData;
}
