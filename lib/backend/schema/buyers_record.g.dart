// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buyers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuyersRecord> _$buyersRecordSerializer =
    new _$BuyersRecordSerializer();

class _$BuyersRecordSerializer implements StructuredSerializer<BuyersRecord> {
  @override
  final Iterable<Type> types = const [BuyersRecord, _$BuyersRecord];
  @override
  final String wireName = 'BuyersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuyersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.buyerId;
    if (value != null) {
      result
        ..add('buyer_id')
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
    value = object.profession;
    if (value != null) {
      result
        ..add('profession')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('last_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('first_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.wishlist;
    if (value != null) {
      result
        ..add('wishlist')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.becomeSellerStatus;
    if (value != null) {
      result
        ..add('become_seller_status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cart;
    if (value != null) {
      result
        ..add('cart')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
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
  BuyersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuyersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'buyer_id':
          result.buyerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profession':
          result.profession = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'wishlist':
          result.wishlist.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'become_seller_status':
          result.becomeSellerStatus = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'cart':
          result.cart.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
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

class _$BuyersRecord extends BuyersRecord {
  @override
  final String? buyerId;
  @override
  final String? status;
  @override
  final String? profession;
  @override
  final String? username;
  @override
  final String? displayName;
  @override
  final String? email;
  @override
  final String? lastName;
  @override
  final String? firstName;
  @override
  final BuiltList<String>? wishlist;
  @override
  final String? image;
  @override
  final bool? becomeSellerStatus;
  @override
  final BuiltList<String>? cart;
  @override
  final String? phone;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BuyersRecord([void Function(BuyersRecordBuilder)? updates]) =>
      (new BuyersRecordBuilder()..update(updates))._build();

  _$BuyersRecord._(
      {this.buyerId,
      this.status,
      this.profession,
      this.username,
      this.displayName,
      this.email,
      this.lastName,
      this.firstName,
      this.wishlist,
      this.image,
      this.becomeSellerStatus,
      this.cart,
      this.phone,
      this.ffRef})
      : super._();

  @override
  BuyersRecord rebuild(void Function(BuyersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuyersRecordBuilder toBuilder() => new BuyersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuyersRecord &&
        buyerId == other.buyerId &&
        status == other.status &&
        profession == other.profession &&
        username == other.username &&
        displayName == other.displayName &&
        email == other.email &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        wishlist == other.wishlist &&
        image == other.image &&
        becomeSellerStatus == other.becomeSellerStatus &&
        cart == other.cart &&
        phone == other.phone &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, buyerId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, profession.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, wishlist.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, becomeSellerStatus.hashCode);
    _$hash = $jc(_$hash, cart.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BuyersRecord')
          ..add('buyerId', buyerId)
          ..add('status', status)
          ..add('profession', profession)
          ..add('username', username)
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('wishlist', wishlist)
          ..add('image', image)
          ..add('becomeSellerStatus', becomeSellerStatus)
          ..add('cart', cart)
          ..add('phone', phone)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BuyersRecordBuilder
    implements Builder<BuyersRecord, BuyersRecordBuilder> {
  _$BuyersRecord? _$v;

  String? _buyerId;
  String? get buyerId => _$this._buyerId;
  set buyerId(String? buyerId) => _$this._buyerId = buyerId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _profession;
  String? get profession => _$this._profession;
  set profession(String? profession) => _$this._profession = profession;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  ListBuilder<String>? _wishlist;
  ListBuilder<String> get wishlist =>
      _$this._wishlist ??= new ListBuilder<String>();
  set wishlist(ListBuilder<String>? wishlist) => _$this._wishlist = wishlist;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  bool? _becomeSellerStatus;
  bool? get becomeSellerStatus => _$this._becomeSellerStatus;
  set becomeSellerStatus(bool? becomeSellerStatus) =>
      _$this._becomeSellerStatus = becomeSellerStatus;

  ListBuilder<String>? _cart;
  ListBuilder<String> get cart => _$this._cart ??= new ListBuilder<String>();
  set cart(ListBuilder<String>? cart) => _$this._cart = cart;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BuyersRecordBuilder() {
    BuyersRecord._initializeBuilder(this);
  }

  BuyersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _buyerId = $v.buyerId;
      _status = $v.status;
      _profession = $v.profession;
      _username = $v.username;
      _displayName = $v.displayName;
      _email = $v.email;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _wishlist = $v.wishlist?.toBuilder();
      _image = $v.image;
      _becomeSellerStatus = $v.becomeSellerStatus;
      _cart = $v.cart?.toBuilder();
      _phone = $v.phone;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuyersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuyersRecord;
  }

  @override
  void update(void Function(BuyersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BuyersRecord build() => _build();

  _$BuyersRecord _build() {
    _$BuyersRecord _$result;
    try {
      _$result = _$v ??
          new _$BuyersRecord._(
              buyerId: buyerId,
              status: status,
              profession: profession,
              username: username,
              displayName: displayName,
              email: email,
              lastName: lastName,
              firstName: firstName,
              wishlist: _wishlist?.build(),
              image: image,
              becomeSellerStatus: becomeSellerStatus,
              cart: _cart?.build(),
              phone: phone,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'wishlist';
        _wishlist?.build();

        _$failedField = 'cart';
        _cart?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BuyersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
