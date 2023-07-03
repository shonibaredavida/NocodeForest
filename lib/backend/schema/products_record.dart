import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  // "nocode_software" field.
  String? _nocodeSoftware;
  String get nocodeSoftware => _nocodeSoftware ?? '';
  bool hasNocodeSoftware() => _nocodeSoftware != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "seller_id" field.
  String? _sellerId;
  String get sellerId => _sellerId ?? '';
  bool hasSellerId() => _sellerId != null;

  // "platform" field.
  String? _platform;
  String get platform => _platform ?? '';
  bool hasPlatform() => _platform != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "num_of_clicks" field.
  int? _numOfClicks;
  int get numOfClicks => _numOfClicks ?? 0;
  bool hasNumOfClicks() => _numOfClicks != null;

  // "num_of_sales" field.
  int? _numOfSales;
  int get numOfSales => _numOfSales ?? 0;
  bool hasNumOfSales() => _numOfSales != null;

  // "compartible_browsers" field.
  List<String>? _compartibleBrowsers;
  List<String> get compartibleBrowsers => _compartibleBrowsers ?? const [];
  bool hasCompartibleBrowsers() => _compartibleBrowsers != null;

  // "include_files" field.
  List<String>? _includeFiles;
  List<String> get includeFiles => _includeFiles ?? const [];
  bool hasIncludeFiles() => _includeFiles != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "live_link" field.
  String? _liveLink;
  String get liveLink => _liveLink ?? '';
  bool hasLiveLink() => _liveLink != null;

  // "clone_link" field.
  String? _cloneLink;
  String get cloneLink => _cloneLink ?? '';
  bool hasCloneLink() => _cloneLink != null;

  // "date_created" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "date_modified" field.
  DateTime? _dateModified;
  DateTime? get dateModified => _dateModified;
  bool hasDateModified() => _dateModified != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "product_images" field.
  List<String>? _productImages;
  List<String> get productImages => _productImages ?? const [];
  bool hasProductImages() => _productImages != null;

  // "sellerInfo" field.
  DocumentReference? _sellerInfo;
  DocumentReference? get sellerInfo => _sellerInfo;
  bool hasSellerInfo() => _sellerInfo != null;

  // "high_resolution" field.
  bool? _highResolution;
  bool get highResolution => _highResolution ?? false;
  bool hasHighResolution() => _highResolution != null;

  // "updates" field.
  bool? _updates;
  bool get updates => _updates ?? false;
  bool hasUpdates() => _updates != null;

  // "documentation" field.
  bool? _documentation;
  bool get documentation => _documentation ?? false;
  bool hasDocumentation() => _documentation != null;

  // "responsive_layout" field.
  bool? _responsiveLayout;
  bool get responsiveLayout => _responsiveLayout ?? false;
  bool hasResponsiveLayout() => _responsiveLayout != null;

  // "support" field.
  bool? _support;
  bool get support => _support ?? false;
  bool hasSupport() => _support != null;

  // "custom_code" field.
  bool? _customCode;
  bool get customCode => _customCode ?? false;
  bool hasCustomCode() => _customCode != null;

  // "liked_by" field.
  List<DocumentReference>? _likedBy;
  List<DocumentReference> get likedBy => _likedBy ?? const [];
  bool hasLikedBy() => _likedBy != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "reviews" field.
  List<ProductReviewsStruct>? _reviews;
  List<ProductReviewsStruct> get reviews => _reviews ?? const [];
  bool hasReviews() => _reviews != null;

  // "payment_link" field.
  String? _paymentLink;
  String get paymentLink => _paymentLink ?? '';
  bool hasPaymentLink() => _paymentLink != null;

  // "seller_name" field.
  String? _sellerName;
  String get sellerName => _sellerName ?? '';
  bool hasSellerName() => _sellerName != null;

  // "numOfReviews" field.
  double? _numOfReviews;
  double get numOfReviews => _numOfReviews ?? 0.0;
  bool hasNumOfReviews() => _numOfReviews != null;

  // "list_of_reviewer" field.
  List<String>? _listOfReviewer;
  List<String> get listOfReviewer => _listOfReviewer ?? const [];
  bool hasListOfReviewer() => _listOfReviewer != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _tags = getDataList(snapshotData['tags']);
    _nocodeSoftware = snapshotData['nocode_software'] as String?;
    _status = snapshotData['status'] as String?;
    _sellerId = snapshotData['seller_id'] as String?;
    _platform = snapshotData['platform'] as String?;
    _category = snapshotData['category'] as String?;
    _numOfClicks = castToType<int>(snapshotData['num_of_clicks']);
    _numOfSales = castToType<int>(snapshotData['num_of_sales']);
    _compartibleBrowsers = getDataList(snapshotData['compartible_browsers']);
    _includeFiles = getDataList(snapshotData['include_files']);
    _description = snapshotData['description'] as String?;
    _productId = snapshotData['product_id'] as String?;
    _liveLink = snapshotData['live_link'] as String?;
    _cloneLink = snapshotData['clone_link'] as String?;
    _dateCreated = snapshotData['date_created'] as DateTime?;
    _dateModified = snapshotData['date_modified'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _productImages = getDataList(snapshotData['product_images']);
    _sellerInfo = snapshotData['sellerInfo'] as DocumentReference?;
    _highResolution = snapshotData['high_resolution'] as bool?;
    _updates = snapshotData['updates'] as bool?;
    _documentation = snapshotData['documentation'] as bool?;
    _responsiveLayout = snapshotData['responsive_layout'] as bool?;
    _support = snapshotData['support'] as bool?;
    _customCode = snapshotData['custom_code'] as bool?;
    _likedBy = getDataList(snapshotData['liked_by']);
    _rating = castToType<double>(snapshotData['rating']);
    _reviews = getStructList(
      snapshotData['reviews'],
      ProductReviewsStruct.fromMap,
    );
    _paymentLink = snapshotData['payment_link'] as String?;
    _sellerName = snapshotData['seller_name'] as String?;
    _numOfReviews = castToType<double>(snapshotData['numOfReviews']);
    _listOfReviewer = getDataList(snapshotData['list_of_reviewer']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
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
  String? description,
  String? productId,
  String? liveLink,
  String? cloneLink,
  DateTime? dateCreated,
  DateTime? dateModified,
  String? image,
  DocumentReference? sellerInfo,
  bool? highResolution,
  bool? updates,
  bool? documentation,
  bool? responsiveLayout,
  bool? support,
  bool? customCode,
  double? rating,
  String? paymentLink,
  String? sellerName,
  double? numOfReviews,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'nocode_software': nocodeSoftware,
      'status': status,
      'seller_id': sellerId,
      'platform': platform,
      'category': category,
      'num_of_clicks': numOfClicks,
      'num_of_sales': numOfSales,
      'description': description,
      'product_id': productId,
      'live_link': liveLink,
      'clone_link': cloneLink,
      'date_created': dateCreated,
      'date_modified': dateModified,
      'image': image,
      'sellerInfo': sellerInfo,
      'high_resolution': highResolution,
      'updates': updates,
      'documentation': documentation,
      'responsive_layout': responsiveLayout,
      'support': support,
      'custom_code': customCode,
      'rating': rating,
      'payment_link': paymentLink,
      'seller_name': sellerName,
      'numOfReviews': numOfReviews,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.nocodeSoftware == e2?.nocodeSoftware &&
        e1?.status == e2?.status &&
        e1?.sellerId == e2?.sellerId &&
        e1?.platform == e2?.platform &&
        e1?.category == e2?.category &&
        e1?.numOfClicks == e2?.numOfClicks &&
        e1?.numOfSales == e2?.numOfSales &&
        listEquality.equals(e1?.compartibleBrowsers, e2?.compartibleBrowsers) &&
        listEquality.equals(e1?.includeFiles, e2?.includeFiles) &&
        e1?.description == e2?.description &&
        e1?.productId == e2?.productId &&
        e1?.liveLink == e2?.liveLink &&
        e1?.cloneLink == e2?.cloneLink &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.dateModified == e2?.dateModified &&
        e1?.image == e2?.image &&
        listEquality.equals(e1?.productImages, e2?.productImages) &&
        e1?.sellerInfo == e2?.sellerInfo &&
        e1?.highResolution == e2?.highResolution &&
        e1?.updates == e2?.updates &&
        e1?.documentation == e2?.documentation &&
        e1?.responsiveLayout == e2?.responsiveLayout &&
        e1?.support == e2?.support &&
        e1?.customCode == e2?.customCode &&
        listEquality.equals(e1?.likedBy, e2?.likedBy) &&
        e1?.rating == e2?.rating &&
        listEquality.equals(e1?.reviews, e2?.reviews) &&
        e1?.paymentLink == e2?.paymentLink &&
        e1?.sellerName == e2?.sellerName &&
        e1?.numOfReviews == e2?.numOfReviews &&
        listEquality.equals(e1?.listOfReviewer, e2?.listOfReviewer);
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.price,
        e?.tags,
        e?.nocodeSoftware,
        e?.status,
        e?.sellerId,
        e?.platform,
        e?.category,
        e?.numOfClicks,
        e?.numOfSales,
        e?.compartibleBrowsers,
        e?.includeFiles,
        e?.description,
        e?.productId,
        e?.liveLink,
        e?.cloneLink,
        e?.dateCreated,
        e?.dateModified,
        e?.image,
        e?.productImages,
        e?.sellerInfo,
        e?.highResolution,
        e?.updates,
        e?.documentation,
        e?.responsiveLayout,
        e?.support,
        e?.customCode,
        e?.likedBy,
        e?.rating,
        e?.reviews,
        e?.paymentLink,
        e?.sellerName,
        e?.numOfReviews,
        e?.listOfReviewer
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
