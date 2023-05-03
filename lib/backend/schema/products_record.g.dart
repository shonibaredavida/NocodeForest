// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductsRecord> _$productsRecordSerializer =
    new _$ProductsRecordSerializer();

class _$ProductsRecordSerializer
    implements StructuredSerializer<ProductsRecord> {
  @override
  final Iterable<Type> types = const [ProductsRecord, _$ProductsRecord];
  @override
  final String wireName = 'ProductsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.nocodeSoftware;
    if (value != null) {
      result
        ..add('nocode_software')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sellerId;
    if (value != null) {
      result
        ..add('seller_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.platform;
    if (value != null) {
      result
        ..add('platform')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numOfClicks;
    if (value != null) {
      result
        ..add('num_of_clicks')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.numOfSales;
    if (value != null) {
      result
        ..add('num_of_sales')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.compartibleBrowsers;
    if (value != null) {
      result
        ..add('compartible_browsers')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.includeFiles;
    if (value != null) {
      result
        ..add('include_files')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.layout;
    if (value != null) {
      result
        ..add('layout')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productId;
    if (value != null) {
      result
        ..add('product_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.liveLink;
    if (value != null) {
      result
        ..add('live_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cloneLink;
    if (value != null) {
      result
        ..add('clone_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateCreated;
    if (value != null) {
      result
        ..add('date_created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dateModified;
    if (value != null) {
      result
        ..add('date_modified')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productImages;
    if (value != null) {
      result
        ..add('product_images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.sellerInfo;
    if (value != null) {
      result
        ..add('sellerInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ProductsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'nocode_software':
          result.nocodeSoftware = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'seller_id':
          result.sellerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'platform':
          result.platform = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'num_of_clicks':
          result.numOfClicks = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'num_of_sales':
          result.numOfSales = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'compartible_browsers':
          result.compartibleBrowsers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'include_files':
          result.includeFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'layout':
          result.layout = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'product_id':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'live_link':
          result.liveLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'clone_link':
          result.cloneLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date_created':
          result.dateCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'date_modified':
          result.dateModified = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'product_images':
          result.productImages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'sellerInfo':
          result.sellerInfo = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductsRecord extends ProductsRecord {
  @override
  final String? name;
  @override
  final double? price;
  @override
  final BuiltList<String>? tags;
  @override
  final String? nocodeSoftware;
  @override
  final String? status;
  @override
  final String? sellerId;
  @override
  final String? platform;
  @override
  final String? category;
  @override
  final int? numOfClicks;
  @override
  final int? numOfSales;
  @override
  final BuiltList<String>? compartibleBrowsers;
  @override
  final BuiltList<String>? includeFiles;
  @override
  final String? layout;
  @override
  final String? description;
  @override
  final String? productId;
  @override
  final String? liveLink;
  @override
  final String? cloneLink;
  @override
  final DateTime? dateCreated;
  @override
  final DateTime? dateModified;
  @override
  final String? image;
  @override
  final BuiltList<String>? productImages;
  @override
  final DocumentReference<Object?>? sellerInfo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductsRecord([void Function(ProductsRecordBuilder)? updates]) =>
      (new ProductsRecordBuilder()..update(updates))._build();

  _$ProductsRecord._(
      {this.name,
      this.price,
      this.tags,
      this.nocodeSoftware,
      this.status,
      this.sellerId,
      this.platform,
      this.category,
      this.numOfClicks,
      this.numOfSales,
      this.compartibleBrowsers,
      this.includeFiles,
      this.layout,
      this.description,
      this.productId,
      this.liveLink,
      this.cloneLink,
      this.dateCreated,
      this.dateModified,
      this.image,
      this.productImages,
      this.sellerInfo,
      this.ffRef})
      : super._();

  @override
  ProductsRecord rebuild(void Function(ProductsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsRecordBuilder toBuilder() =>
      new ProductsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductsRecord &&
        name == other.name &&
        price == other.price &&
        tags == other.tags &&
        nocodeSoftware == other.nocodeSoftware &&
        status == other.status &&
        sellerId == other.sellerId &&
        platform == other.platform &&
        category == other.category &&
        numOfClicks == other.numOfClicks &&
        numOfSales == other.numOfSales &&
        compartibleBrowsers == other.compartibleBrowsers &&
        includeFiles == other.includeFiles &&
        layout == other.layout &&
        description == other.description &&
        productId == other.productId &&
        liveLink == other.liveLink &&
        cloneLink == other.cloneLink &&
        dateCreated == other.dateCreated &&
        dateModified == other.dateModified &&
        image == other.image &&
        productImages == other.productImages &&
        sellerInfo == other.sellerInfo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, nocodeSoftware.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, sellerId.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, numOfClicks.hashCode);
    _$hash = $jc(_$hash, numOfSales.hashCode);
    _$hash = $jc(_$hash, compartibleBrowsers.hashCode);
    _$hash = $jc(_$hash, includeFiles.hashCode);
    _$hash = $jc(_$hash, layout.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, liveLink.hashCode);
    _$hash = $jc(_$hash, cloneLink.hashCode);
    _$hash = $jc(_$hash, dateCreated.hashCode);
    _$hash = $jc(_$hash, dateModified.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, productImages.hashCode);
    _$hash = $jc(_$hash, sellerInfo.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductsRecord')
          ..add('name', name)
          ..add('price', price)
          ..add('tags', tags)
          ..add('nocodeSoftware', nocodeSoftware)
          ..add('status', status)
          ..add('sellerId', sellerId)
          ..add('platform', platform)
          ..add('category', category)
          ..add('numOfClicks', numOfClicks)
          ..add('numOfSales', numOfSales)
          ..add('compartibleBrowsers', compartibleBrowsers)
          ..add('includeFiles', includeFiles)
          ..add('layout', layout)
          ..add('description', description)
          ..add('productId', productId)
          ..add('liveLink', liveLink)
          ..add('cloneLink', cloneLink)
          ..add('dateCreated', dateCreated)
          ..add('dateModified', dateModified)
          ..add('image', image)
          ..add('productImages', productImages)
          ..add('sellerInfo', sellerInfo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductsRecordBuilder
    implements Builder<ProductsRecord, ProductsRecordBuilder> {
  _$ProductsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  String? _nocodeSoftware;
  String? get nocodeSoftware => _$this._nocodeSoftware;
  set nocodeSoftware(String? nocodeSoftware) =>
      _$this._nocodeSoftware = nocodeSoftware;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _sellerId;
  String? get sellerId => _$this._sellerId;
  set sellerId(String? sellerId) => _$this._sellerId = sellerId;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  int? _numOfClicks;
  int? get numOfClicks => _$this._numOfClicks;
  set numOfClicks(int? numOfClicks) => _$this._numOfClicks = numOfClicks;

  int? _numOfSales;
  int? get numOfSales => _$this._numOfSales;
  set numOfSales(int? numOfSales) => _$this._numOfSales = numOfSales;

  ListBuilder<String>? _compartibleBrowsers;
  ListBuilder<String> get compartibleBrowsers =>
      _$this._compartibleBrowsers ??= new ListBuilder<String>();
  set compartibleBrowsers(ListBuilder<String>? compartibleBrowsers) =>
      _$this._compartibleBrowsers = compartibleBrowsers;

  ListBuilder<String>? _includeFiles;
  ListBuilder<String> get includeFiles =>
      _$this._includeFiles ??= new ListBuilder<String>();
  set includeFiles(ListBuilder<String>? includeFiles) =>
      _$this._includeFiles = includeFiles;

  String? _layout;
  String? get layout => _$this._layout;
  set layout(String? layout) => _$this._layout = layout;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _liveLink;
  String? get liveLink => _$this._liveLink;
  set liveLink(String? liveLink) => _$this._liveLink = liveLink;

  String? _cloneLink;
  String? get cloneLink => _$this._cloneLink;
  set cloneLink(String? cloneLink) => _$this._cloneLink = cloneLink;

  DateTime? _dateCreated;
  DateTime? get dateCreated => _$this._dateCreated;
  set dateCreated(DateTime? dateCreated) => _$this._dateCreated = dateCreated;

  DateTime? _dateModified;
  DateTime? get dateModified => _$this._dateModified;
  set dateModified(DateTime? dateModified) =>
      _$this._dateModified = dateModified;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ListBuilder<String>? _productImages;
  ListBuilder<String> get productImages =>
      _$this._productImages ??= new ListBuilder<String>();
  set productImages(ListBuilder<String>? productImages) =>
      _$this._productImages = productImages;

  DocumentReference<Object?>? _sellerInfo;
  DocumentReference<Object?>? get sellerInfo => _$this._sellerInfo;
  set sellerInfo(DocumentReference<Object?>? sellerInfo) =>
      _$this._sellerInfo = sellerInfo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductsRecordBuilder() {
    ProductsRecord._initializeBuilder(this);
  }

  ProductsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _tags = $v.tags?.toBuilder();
      _nocodeSoftware = $v.nocodeSoftware;
      _status = $v.status;
      _sellerId = $v.sellerId;
      _platform = $v.platform;
      _category = $v.category;
      _numOfClicks = $v.numOfClicks;
      _numOfSales = $v.numOfSales;
      _compartibleBrowsers = $v.compartibleBrowsers?.toBuilder();
      _includeFiles = $v.includeFiles?.toBuilder();
      _layout = $v.layout;
      _description = $v.description;
      _productId = $v.productId;
      _liveLink = $v.liveLink;
      _cloneLink = $v.cloneLink;
      _dateCreated = $v.dateCreated;
      _dateModified = $v.dateModified;
      _image = $v.image;
      _productImages = $v.productImages?.toBuilder();
      _sellerInfo = $v.sellerInfo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductsRecord;
  }

  @override
  void update(void Function(ProductsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductsRecord build() => _build();

  _$ProductsRecord _build() {
    _$ProductsRecord _$result;
    try {
      _$result = _$v ??
          new _$ProductsRecord._(
              name: name,
              price: price,
              tags: _tags?.build(),
              nocodeSoftware: nocodeSoftware,
              status: status,
              sellerId: sellerId,
              platform: platform,
              category: category,
              numOfClicks: numOfClicks,
              numOfSales: numOfSales,
              compartibleBrowsers: _compartibleBrowsers?.build(),
              includeFiles: _includeFiles?.build(),
              layout: layout,
              description: description,
              productId: productId,
              liveLink: liveLink,
              cloneLink: cloneLink,
              dateCreated: dateCreated,
              dateModified: dateModified,
              image: image,
              productImages: _productImages?.build(),
              sellerInfo: sellerInfo,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'compartibleBrowsers';
        _compartibleBrowsers?.build();
        _$failedField = 'includeFiles';
        _includeFiles?.build();

        _$failedField = 'productImages';
        _productImages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProductsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
