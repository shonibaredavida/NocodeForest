import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'reviews_record.g.dart';

abstract class ReviewsRecord
    implements Built<ReviewsRecord, ReviewsRecordBuilder> {
  static Serializer<ReviewsRecord> get serializer => _$reviewsRecordSerializer;

  @BuiltValueField(wireName: 'product_id')
  String? get productId;

  @BuiltValueField(wireName: 'buyer_id')
  String? get buyerId;

  BuiltList<String>? get reviews;

  double? get ratings;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ReviewsRecordBuilder builder) => builder
    ..productId = ''
    ..buyerId = ''
    ..reviews = ListBuilder()
    ..ratings = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviews');

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ReviewsRecord._();
  factory ReviewsRecord([void Function(ReviewsRecordBuilder) updates]) =
      _$ReviewsRecord;

  static ReviewsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createReviewsRecordData({
  String? productId,
  String? buyerId,
  double? ratings,
}) {
  final firestoreData = serializers.toFirestore(
    ReviewsRecord.serializer,
    ReviewsRecord(
      (r) => r
        ..productId = productId
        ..buyerId = buyerId
        ..reviews = null
        ..ratings = ratings,
    ),
  );

  return firestoreData;
}
