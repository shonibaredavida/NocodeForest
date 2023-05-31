import 'dart:async';

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

  // "pending" field.
  bool? _pending;
  bool get pending => _pending ?? false;
  bool hasPending() => _pending != null;

  // "approved" field.
  bool? _approved;
  bool get approved => _approved ?? false;
  bool hasApproved() => _approved != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _tags = getDataList(snapshotData['tags']);
    _nocodeSoftware = snapshotData['nocode_software'] as String?;
    _status = snapshotData['status'] as String?;
    _sellerId = snapshotData['seller_id'] as String?;
    _platform = snapshotData['platform'] as String?;
    _category = snapshotData['category'] as String?;
    _numOfClicks = snapshotData['num_of_clicks'] as int?;
    _numOfSales = snapshotData['num_of_sales'] as int?;
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
    _pending = snapshotData['pending'] as bool?;
    _approved = snapshotData['approved'] as bool?;
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
  bool? pending,
  bool? approved,
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
      'pending': pending,
      'approved': approved,
    }.withoutNulls,
  );

  return firestoreData;
}
