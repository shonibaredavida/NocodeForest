// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waitlist_business_owner_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WaitlistBusinessOwnerRecord>
    _$waitlistBusinessOwnerRecordSerializer =
    new _$WaitlistBusinessOwnerRecordSerializer();

class _$WaitlistBusinessOwnerRecordSerializer
    implements StructuredSerializer<WaitlistBusinessOwnerRecord> {
  @override
  final Iterable<Type> types = const [
    WaitlistBusinessOwnerRecord,
    _$WaitlistBusinessOwnerRecord
  ];
  @override
  final String wireName = 'WaitlistBusinessOwnerRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WaitlistBusinessOwnerRecord object,
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
    value = object.fullName;
    if (value != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.websiteType;
    if (value != null) {
      result
        ..add('website_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.industry;
    if (value != null) {
      result
        ..add('industry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postMaintenance;
    if (value != null) {
      result
        ..add('post_maintenance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.budget;
    if (value != null) {
      result
        ..add('budget')
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
  WaitlistBusinessOwnerRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WaitlistBusinessOwnerRecordBuilder();

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
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'website_type':
          result.websiteType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'industry':
          result.industry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'post_maintenance':
          result.postMaintenance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'budget':
          result.budget = serializers.deserialize(value,
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

class _$WaitlistBusinessOwnerRecord extends WaitlistBusinessOwnerRecord {
  @override
  final String? country;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final DateTime? createdTime;
  @override
  final String? fullName;
  @override
  final String? websiteType;
  @override
  final String? industry;
  @override
  final String? postMaintenance;
  @override
  final String? budget;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WaitlistBusinessOwnerRecord(
          [void Function(WaitlistBusinessOwnerRecordBuilder)? updates]) =>
      (new WaitlistBusinessOwnerRecordBuilder()..update(updates))._build();

  _$WaitlistBusinessOwnerRecord._(
      {this.country,
      this.email,
      this.phone,
      this.createdTime,
      this.fullName,
      this.websiteType,
      this.industry,
      this.postMaintenance,
      this.budget,
      this.ffRef})
      : super._();

  @override
  WaitlistBusinessOwnerRecord rebuild(
          void Function(WaitlistBusinessOwnerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WaitlistBusinessOwnerRecordBuilder toBuilder() =>
      new WaitlistBusinessOwnerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WaitlistBusinessOwnerRecord &&
        country == other.country &&
        email == other.email &&
        phone == other.phone &&
        createdTime == other.createdTime &&
        fullName == other.fullName &&
        websiteType == other.websiteType &&
        industry == other.industry &&
        postMaintenance == other.postMaintenance &&
        budget == other.budget &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, websiteType.hashCode);
    _$hash = $jc(_$hash, industry.hashCode);
    _$hash = $jc(_$hash, postMaintenance.hashCode);
    _$hash = $jc(_$hash, budget.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WaitlistBusinessOwnerRecord')
          ..add('country', country)
          ..add('email', email)
          ..add('phone', phone)
          ..add('createdTime', createdTime)
          ..add('fullName', fullName)
          ..add('websiteType', websiteType)
          ..add('industry', industry)
          ..add('postMaintenance', postMaintenance)
          ..add('budget', budget)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WaitlistBusinessOwnerRecordBuilder
    implements
        Builder<WaitlistBusinessOwnerRecord,
            WaitlistBusinessOwnerRecordBuilder> {
  _$WaitlistBusinessOwnerRecord? _$v;

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

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _websiteType;
  String? get websiteType => _$this._websiteType;
  set websiteType(String? websiteType) => _$this._websiteType = websiteType;

  String? _industry;
  String? get industry => _$this._industry;
  set industry(String? industry) => _$this._industry = industry;

  String? _postMaintenance;
  String? get postMaintenance => _$this._postMaintenance;
  set postMaintenance(String? postMaintenance) =>
      _$this._postMaintenance = postMaintenance;

  String? _budget;
  String? get budget => _$this._budget;
  set budget(String? budget) => _$this._budget = budget;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WaitlistBusinessOwnerRecordBuilder() {
    WaitlistBusinessOwnerRecord._initializeBuilder(this);
  }

  WaitlistBusinessOwnerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _country = $v.country;
      _email = $v.email;
      _phone = $v.phone;
      _createdTime = $v.createdTime;
      _fullName = $v.fullName;
      _websiteType = $v.websiteType;
      _industry = $v.industry;
      _postMaintenance = $v.postMaintenance;
      _budget = $v.budget;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WaitlistBusinessOwnerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WaitlistBusinessOwnerRecord;
  }

  @override
  void update(void Function(WaitlistBusinessOwnerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WaitlistBusinessOwnerRecord build() => _build();

  _$WaitlistBusinessOwnerRecord _build() {
    final _$result = _$v ??
        new _$WaitlistBusinessOwnerRecord._(
            country: country,
            email: email,
            phone: phone,
            createdTime: createdTime,
            fullName: fullName,
            websiteType: websiteType,
            industry: industry,
            postMaintenance: postMaintenance,
            budget: budget,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
