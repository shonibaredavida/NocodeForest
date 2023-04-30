// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_info_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SellerInfoRecord> _$sellerInfoRecordSerializer =
    new _$SellerInfoRecordSerializer();

class _$SellerInfoRecordSerializer
    implements StructuredSerializer<SellerInfoRecord> {
  @override
  final Iterable<Type> types = const [SellerInfoRecord, _$SellerInfoRecord];
  @override
  final String wireName = 'SellerInfoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SellerInfoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
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
  SellerInfoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SellerInfoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
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

class _$SellerInfoRecord extends SellerInfoRecord {
  @override
  final String? profession;
  @override
  final String? username;
  @override
  final String? displayName;
  @override
  final String? lastName;
  @override
  final String? firstName;
  @override
  final String? uid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SellerInfoRecord(
          [void Function(SellerInfoRecordBuilder)? updates]) =>
      (new SellerInfoRecordBuilder()..update(updates))._build();

  _$SellerInfoRecord._(
      {this.profession,
      this.username,
      this.displayName,
      this.lastName,
      this.firstName,
      this.uid,
      this.ffRef})
      : super._();

  @override
  SellerInfoRecord rebuild(void Function(SellerInfoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SellerInfoRecordBuilder toBuilder() =>
      new SellerInfoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SellerInfoRecord &&
        profession == other.profession &&
        username == other.username &&
        displayName == other.displayName &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        uid == other.uid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, profession.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SellerInfoRecord')
          ..add('profession', profession)
          ..add('username', username)
          ..add('displayName', displayName)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('uid', uid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SellerInfoRecordBuilder
    implements Builder<SellerInfoRecord, SellerInfoRecordBuilder> {
  _$SellerInfoRecord? _$v;

  String? _profession;
  String? get profession => _$this._profession;
  set profession(String? profession) => _$this._profession = profession;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SellerInfoRecordBuilder() {
    SellerInfoRecord._initializeBuilder(this);
  }

  SellerInfoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _profession = $v.profession;
      _username = $v.username;
      _displayName = $v.displayName;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _uid = $v.uid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SellerInfoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SellerInfoRecord;
  }

  @override
  void update(void Function(SellerInfoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SellerInfoRecord build() => _build();

  _$SellerInfoRecord _build() {
    final _$result = _$v ??
        new _$SellerInfoRecord._(
            profession: profession,
            username: username,
            displayName: displayName,
            lastName: lastName,
            firstName: firstName,
            uid: uid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
