import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cart_record.g.dart';

abstract class CartRecord implements Built<CartRecord, CartRecordBuilder> {
  static Serializer<CartRecord> get serializer => _$cartRecordSerializer;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  @BuiltValueField(wireName: 'product_id')
  DocumentReference? get productId;

  @BuiltValueField(wireName: 'product_name')
  String? get productName;

  String? get price;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CartRecordBuilder builder) => builder
    ..userId = ''
    ..productName = ''
    ..price = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CartRecord._();
  factory CartRecord([void Function(CartRecordBuilder) updates]) = _$CartRecord;

  static CartRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCartRecordData({
  String? userId,
  DocumentReference? productId,
  String? productName,
  String? price,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    CartRecord.serializer,
    CartRecord(
      (c) => c
        ..userId = userId
        ..productId = productId
        ..productName = productName
        ..price = price
        ..image = image,
    ),
  );

  return firestoreData;
}
