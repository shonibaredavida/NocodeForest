// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waitlist_talent_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WaitlistTalentRecord> _$waitlistTalentRecordSerializer =
    new _$WaitlistTalentRecordSerializer();

class _$WaitlistTalentRecordSerializer
    implements StructuredSerializer<WaitlistTalentRecord> {
  @override
  final Iterable<Type> types = const [
    WaitlistTalentRecord,
    _$WaitlistTalentRecord
  ];
  @override
  final String wireName = 'WaitlistTalentRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WaitlistTalentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.country;
    if (value != null) {
      result
        ..add('country')
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
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
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
    value = object.nocodeTools;
    if (value != null) {
      result
        ..add('nocode_tools')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.webAppLink;
    if (value != null) {
      result
        ..add('web_app_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobileAppLink;
    if (value != null) {
      result
        ..add('mobile_app_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nocoderStatus;
    if (value != null) {
      result
        ..add('nocoder_status')
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
  WaitlistTalentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WaitlistTalentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'nocode_tools':
          result.nocodeTools = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'web_app_link':
          result.webAppLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mobile_app_link':
          result.mobileAppLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nocoder_status':
          result.nocoderStatus = serializers.deserialize(value,
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

class _$WaitlistTalentRecord extends WaitlistTalentRecord {
  @override
  final String? country;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final DateTime? createdTime;
  @override
  final String? nocodeTools;
  @override
  final String? fullName;
  @override
  final String? webAppLink;
  @override
  final String? mobileAppLink;
  @override
  final String? nocoderStatus;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WaitlistTalentRecord(
          [void Function(WaitlistTalentRecordBuilder)? updates]) =>
      (new WaitlistTalentRecordBuilder()..update(updates))._build();

  _$WaitlistTalentRecord._(
      {this.country,
      this.email,
      this.phone,
      this.createdTime,
      this.nocodeTools,
      this.fullName,
      this.webAppLink,
      this.mobileAppLink,
      this.nocoderStatus,
      this.ffRef})
      : super._();

  @override
  WaitlistTalentRecord rebuild(
          void Function(WaitlistTalentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WaitlistTalentRecordBuilder toBuilder() =>
      new WaitlistTalentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WaitlistTalentRecord &&
        country == other.country &&
        email == other.email &&
        phone == other.phone &&
        createdTime == other.createdTime &&
        nocodeTools == other.nocodeTools &&
        fullName == other.fullName &&
        webAppLink == other.webAppLink &&
        mobileAppLink == other.mobileAppLink &&
        nocoderStatus == other.nocoderStatus &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, nocodeTools.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, webAppLink.hashCode);
    _$hash = $jc(_$hash, mobileAppLink.hashCode);
    _$hash = $jc(_$hash, nocoderStatus.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WaitlistTalentRecord')
          ..add('country', country)
          ..add('email', email)
          ..add('phone', phone)
          ..add('createdTime', createdTime)
          ..add('nocodeTools', nocodeTools)
          ..add('fullName', fullName)
          ..add('webAppLink', webAppLink)
          ..add('mobileAppLink', mobileAppLink)
          ..add('nocoderStatus', nocoderStatus)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WaitlistTalentRecordBuilder
    implements Builder<WaitlistTalentRecord, WaitlistTalentRecordBuilder> {
  _$WaitlistTalentRecord? _$v;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _nocodeTools;
  String? get nocodeTools => _$this._nocodeTools;
  set nocodeTools(String? nocodeTools) => _$this._nocodeTools = nocodeTools;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _webAppLink;
  String? get webAppLink => _$this._webAppLink;
  set webAppLink(String? webAppLink) => _$this._webAppLink = webAppLink;

  String? _mobileAppLink;
  String? get mobileAppLink => _$this._mobileAppLink;
  set mobileAppLink(String? mobileAppLink) =>
      _$this._mobileAppLink = mobileAppLink;

  String? _nocoderStatus;
  String? get nocoderStatus => _$this._nocoderStatus;
  set nocoderStatus(String? nocoderStatus) =>
      _$this._nocoderStatus = nocoderStatus;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WaitlistTalentRecordBuilder() {
    WaitlistTalentRecord._initializeBuilder(this);
  }

  WaitlistTalentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _country = $v.country;
      _email = $v.email;
      _phone = $v.phone;
      _createdTime = $v.createdTime;
      _nocodeTools = $v.nocodeTools;
      _fullName = $v.fullName;
      _webAppLink = $v.webAppLink;
      _mobileAppLink = $v.mobileAppLink;
      _nocoderStatus = $v.nocoderStatus;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WaitlistTalentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WaitlistTalentRecord;
  }

  @override
  void update(void Function(WaitlistTalentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WaitlistTalentRecord build() => _build();

  _$WaitlistTalentRecord _build() {
    final _$result = _$v ??
        new _$WaitlistTalentRecord._(
            country: country,
            email: email,
            phone: phone,
            createdTime: createdTime,
            nocodeTools: nocodeTools,
            fullName: fullName,
            webAppLink: webAppLink,
            mobileAppLink: mobileAppLink,
            nocoderStatus: nocoderStatus,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
