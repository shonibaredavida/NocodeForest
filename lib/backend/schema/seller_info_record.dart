import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'seller_info_record.g.dart';

abstract class SellerInfoRecord
    implements Built<SellerInfoRecord, SellerInfoRecordBuilder> {
  static Serializer<SellerInfoRecord> get serializer =>
      _$sellerInfoRecordSerializer;

  String? get profession;

  String? get username;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  String? get uid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(SellerInfoRecordBuilder builder) => builder
    ..profession = ''
    ..username = ''
    ..displayName = ''
    ..lastName = ''
    ..firstName = ''
    ..uid = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('seller_info')
          : FirebaseFirestore.instance.collectionGroup('seller_info');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('seller_info').doc();

  static Stream<SellerInfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SellerInfoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SellerInfoRecord._();
  factory SellerInfoRecord([void Function(SellerInfoRecordBuilder) updates]) =
      _$SellerInfoRecord;

  static SellerInfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSellerInfoRecordData({
  String? profession,
  String? username,
  String? displayName,
  String? lastName,
  String? firstName,
  String? uid,
}) {
  final firestoreData = serializers.toFirestore(
    SellerInfoRecord.serializer,
    SellerInfoRecord(
      (s) => s
        ..profession = profession
        ..username = username
        ..displayName = displayName
        ..lastName = lastName
        ..firstName = firstName
        ..uid = uid,
    ),
  );

  return firestoreData;
}
