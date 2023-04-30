// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sellers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SellersRecord> _$sellersRecordSerializer =
    new _$SellersRecordSerializer();

class _$SellersRecordSerializer implements StructuredSerializer<SellersRecord> {
  @override
  final Iterable<Type> types = const [SellersRecord, _$SellersRecord];
  @override
  final String wireName = 'SellersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SellersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sellerId;
    if (value != null) {
      result
        ..add('seller_id')
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
    value = object.instagram;
    if (value != null) {
      result
        ..add('instagram')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.facebook;
    if (value != null) {
      result
        ..add('facebook')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.twitter;
    if (value != null) {
      result
        ..add('twitter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeName;
    if (value != null) {
      result
        ..add('store_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interest;
    if (value != null) {
      result
        ..add('interest')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  SellersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SellersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'seller_id':
          result.sellerId = serializers.deserialize(value,
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
        case 'instagram':
          result.instagram = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'facebook':
          result.facebook = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'twitter':
          result.twitter = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'store_name':
          result.storeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'interest':
          result.interest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$SellersRecord extends SellersRecord {
  @override
  final String? sellerId;
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
  final String? instagram;
  @override
  final String? facebook;
  @override
  final String? twitter;
  @override
  final String? storeName;
  @override
  final String? uid;
  @override
  final String? photoUrl;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? interest;
  @override
  final String? phone;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SellersRecord([void Function(SellersRecordBuilder)? updates]) =>
      (new SellersRecordBuilder()..update(updates))._build();

  _$SellersRecord._(
      {this.sellerId,
      this.status,
      this.profession,
      this.username,
      this.displayName,
      this.email,
      this.lastName,
      this.firstName,
      this.wishlist,
      this.image,
      this.instagram,
      this.facebook,
      this.twitter,
      this.storeName,
      this.uid,
      this.photoUrl,
      this.createdTime,
      this.phoneNumber,
      this.interest,
      this.phone,
      this.ffRef})
      : super._();

  @override
  SellersRecord rebuild(void Function(SellersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SellersRecordBuilder toBuilder() => new SellersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SellersRecord &&
        sellerId == other.sellerId &&
        status == other.status &&
        profession == other.profession &&
        username == other.username &&
        displayName == other.displayName &&
        email == other.email &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        wishlist == other.wishlist &&
        image == other.image &&
        instagram == other.instagram &&
        facebook == other.facebook &&
        twitter == other.twitter &&
        storeName == other.storeName &&
        uid == other.uid &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        interest == other.interest &&
        phone == other.phone &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sellerId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, profession.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, wishlist.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, instagram.hashCode);
    _$hash = $jc(_$hash, facebook.hashCode);
    _$hash = $jc(_$hash, twitter.hashCode);
    _$hash = $jc(_$hash, storeName.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, interest.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SellersRecord')
          ..add('sellerId', sellerId)
          ..add('status', status)
          ..add('profession', profession)
          ..add('username', username)
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('wishlist', wishlist)
          ..add('image', image)
          ..add('instagram', instagram)
          ..add('facebook', facebook)
          ..add('twitter', twitter)
          ..add('storeName', storeName)
          ..add('uid', uid)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('interest', interest)
          ..add('phone', phone)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SellersRecordBuilder
    implements Builder<SellersRecord, SellersRecordBuilder> {
  _$SellersRecord? _$v;

  String? _sellerId;
  String? get sellerId => _$this._sellerId;
  set sellerId(String? sellerId) => _$this._sellerId = sellerId;

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

  String? _instagram;
  String? get instagram => _$this._instagram;
  set instagram(String? instagram) => _$this._instagram = instagram;

  String? _facebook;
  String? get facebook => _$this._facebook;
  set facebook(String? facebook) => _$this._facebook = facebook;

  String? _twitter;
  String? get twitter => _$this._twitter;
  set twitter(String? twitter) => _$this._twitter = twitter;

  String? _storeName;
  String? get storeName => _$this._storeName;
  set storeName(String? storeName) => _$this._storeName = storeName;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _interest;
  String? get interest => _$this._interest;
  set interest(String? interest) => _$this._interest = interest;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SellersRecordBuilder() {
    SellersRecord._initializeBuilder(this);
  }

  SellersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sellerId = $v.sellerId;
      _status = $v.status;
      _profession = $v.profession;
      _username = $v.username;
      _displayName = $v.displayName;
      _email = $v.email;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _wishlist = $v.wishlist?.toBuilder();
      _image = $v.image;
      _instagram = $v.instagram;
      _facebook = $v.facebook;
      _twitter = $v.twitter;
      _storeName = $v.storeName;
      _uid = $v.uid;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _interest = $v.interest;
      _phone = $v.phone;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SellersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SellersRecord;
  }

  @override
  void update(void Function(SellersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SellersRecord build() => _build();

  _$SellersRecord _build() {
    _$SellersRecord _$result;
    try {
      _$result = _$v ??
          new _$SellersRecord._(
              sellerId: sellerId,
              status: status,
              profession: profession,
              username: username,
              displayName: displayName,
              email: email,
              lastName: lastName,
              firstName: firstName,
              wishlist: _wishlist?.build(),
              image: image,
              instagram: instagram,
              facebook: facebook,
              twitter: twitter,
              storeName: storeName,
              uid: uid,
              photoUrl: photoUrl,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              interest: interest,
              phone: phone,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'wishlist';
        _wishlist?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SellersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
