// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admins_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AdminsRecord> _$adminsRecordSerializer =
    new _$AdminsRecordSerializer();

class _$AdminsRecordSerializer implements StructuredSerializer<AdminsRecord> {
  @override
  final Iterable<Type> types = const [AdminsRecord, _$AdminsRecord];
  @override
  final String wireName = 'AdminsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AdminsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
  AdminsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdminsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
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

class _$AdminsRecord extends AdminsRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? lastName;
  @override
  final String? firstName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AdminsRecord([void Function(AdminsRecordBuilder)? updates]) =>
      (new AdminsRecordBuilder()..update(updates))._build();

  _$AdminsRecord._(
      {this.email, this.displayName, this.lastName, this.firstName, this.ffRef})
      : super._();

  @override
  AdminsRecord rebuild(void Function(AdminsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminsRecordBuilder toBuilder() => new AdminsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminsRecord &&
        email == other.email &&
        displayName == other.displayName &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminsRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AdminsRecordBuilder
    implements Builder<AdminsRecord, AdminsRecordBuilder> {
  _$AdminsRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AdminsRecordBuilder() {
    AdminsRecord._initializeBuilder(this);
  }

  AdminsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdminsRecord;
  }

  @override
  void update(void Function(AdminsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminsRecord build() => _build();

  _$AdminsRecord _build() {
    final _$result = _$v ??
        new _$AdminsRecord._(
            email: email,
            displayName: displayName,
            lastName: lastName,
            firstName: firstName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
