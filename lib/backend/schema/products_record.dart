import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'products_record.g.dart';

abstract class ProductsRecord
    implements Built<ProductsRecord, ProductsRecordBuilder> {
  static Serializer<ProductsRecord> get serializer =>
      _$productsRecordSerializer;

  String? get name;

  double? get price;

  BuiltList<String>? get tags;

  @BuiltValueField(wireName: 'nocode_software')
  String? get nocodeSoftware;

  String? get status;

  @BuiltValueField(wireName: 'seller_id')
  String? get sellerId;

  String? get platform;

  String? get category;

  @BuiltValueField(wireName: 'num_of_clicks')
  int? get numOfClicks;

  @BuiltValueField(wireName: 'num_of_sales')
  int? get numOfSales;

  @BuiltValueField(wireName: 'compartible_browsers')
  BuiltList<String>? get compartibleBrowsers;

  @BuiltValueField(wireName: 'include_files')
  BuiltList<String>? get includeFiles;

  String? get layout;

  String? get description;

  @BuiltValueField(wireName: 'product_id')
  String? get productId;

  @BuiltValueField(wireName: 'live_link')
  String? get liveLink;

  @BuiltValueField(wireName: 'clone_link')
  String? get cloneLink;

  @BuiltValueField(wireName: 'date_created')
  DateTime? get dateCreated;

  @BuiltValueField(wireName: 'date_modified')
  DateTime? get dateModified;

  String? get image;

  @BuiltValueField(wireName: 'product_images')
  BuiltList<String>? get productImages;

  DocumentReference? get sellerInfo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductsRecordBuilder builder) => builder
    ..name = ''
    ..price = 0.0
    ..tags = ListBuilder()
    ..nocodeSoftware = ''
    ..status = ''
    ..sellerId = ''
    ..platform = ''
    ..category = ''
    ..numOfClicks = 0
    ..numOfSales = 0
    ..compartibleBrowsers = ListBuilder()
    ..includeFiles = ListBuilder()
    ..layout = ''
    ..description = ''
    ..productId = ''
    ..liveLink = ''
    ..cloneLink = ''
    ..image = ''
    ..productImages = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductsRecord._();
  factory ProductsRecord([void Function(ProductsRecordBuilder) updates]) =
      _$ProductsRecord;

  static ProductsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductsRecordData({
  String? name,
  double? price,
  String? nocodeSoftware,
  String? status,
  String? sellerId,
  String? platform,
  String? category,
  int? numOfClicks,
  int? numOfSales,
  String? layout,
  String? description,
  String? productId,
  String? liveLink,
  String? cloneLink,
  DateTime? dateCreated,
  DateTime? dateModified,
  String? image,
  DocumentReference? sellerInfo,
}) {
  final firestoreData = serializers.toFirestore(
    ProductsRecord.serializer,
    ProductsRecord(
      (p) => p
        ..name = name
        ..price = price
        ..tags = null
        ..nocodeSoftware = nocodeSoftware
        ..status = status
        ..sellerId = sellerId
        ..platform = platform
        ..category = category
        ..numOfClicks = numOfClicks
        ..numOfSales = numOfSales
        ..compartibleBrowsers = null
        ..includeFiles = null
        ..layout = layout
        ..description = description
        ..productId = productId
        ..liveLink = liveLink
        ..cloneLink = cloneLink
        ..dateCreated = dateCreated
        ..dateModified = dateModified
        ..image = image
        ..productImages = null
        ..sellerInfo = sellerInfo,
    ),
  );

  return firestoreData;
}
