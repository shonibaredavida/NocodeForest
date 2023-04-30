// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CartRecord> _$cartRecordSerializer = new _$CartRecordSerializer();

class _$CartRecordSerializer implements StructuredSerializer<CartRecord> {
  @override
  final Iterable<Type> types = const [CartRecord, _$CartRecord];
  @override
  final String wireName = 'CartRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CartRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productId;
    if (value != null) {
      result
        ..add('product_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.productName;
    if (value != null) {
      result
        ..add('product_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CartRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'product_id':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'product_name':
          result.productName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$CartRecord extends CartRecord {
  @override
  final String? userId;
  @override
  final DocumentReference<Object?>? productId;
  @override
  final String? productName;
  @override
  final String? price;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CartRecord([void Function(CartRecordBuilder)? updates]) =>
      (new CartRecordBuilder()..update(updates))._build();

  _$CartRecord._(
      {this.userId,
      this.productId,
      this.productName,
      this.price,
      this.image,
      this.ffRef})
      : super._();

  @override
  CartRecord rebuild(void Function(CartRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartRecordBuilder toBuilder() => new CartRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartRecord &&
        userId == other.userId &&
        productId == other.productId &&
        productName == other.productName &&
        price == other.price &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartRecord')
          ..add('userId', userId)
          ..add('productId', productId)
          ..add('productName', productName)
          ..add('price', price)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CartRecordBuilder implements Builder<CartRecord, CartRecordBuilder> {
  _$CartRecord? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DocumentReference<Object?>? _productId;
  DocumentReference<Object?>? get productId => _$this._productId;
  set productId(DocumentReference<Object?>? productId) =>
      _$this._productId = productId;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CartRecordBuilder() {
    CartRecord._initializeBuilder(this);
  }

  CartRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _productId = $v.productId;
      _productName = $v.productName;
      _price = $v.price;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartRecord;
  }

  @override
  void update(void Function(CartRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CartRecord build() => _build();

  _$CartRecord _build() {
    final _$result = _$v ??
        new _$CartRecord._(
            userId: userId,
            productId: productId,
            productName: productName,
            price: price,
            image: image,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
