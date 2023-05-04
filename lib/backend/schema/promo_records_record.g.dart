// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_records_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PromoRecordsRecord> _$promoRecordsRecordSerializer =
    new _$PromoRecordsRecordSerializer();

class _$PromoRecordsRecordSerializer
    implements StructuredSerializer<PromoRecordsRecord> {
  @override
  final Iterable<Type> types = const [PromoRecordsRecord, _$PromoRecordsRecord];
  @override
  final String wireName = 'PromoRecordsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PromoRecordsRecord object,
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
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
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
    value = object.companyInfo;
    if (value != null) {
      result
        ..add('company_info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.offerChoice;
    if (value != null) {
      result
        ..add('offer_choice')
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
    value = object.timeCreated;
    if (value != null) {
      result
        ..add('time_created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  PromoRecordsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PromoRecordsRecordBuilder();

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
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'company_info':
          result.companyInfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'offer_choice':
          result.offerChoice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'industry':
          result.industry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time_created':
          result.timeCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$PromoRecordsRecord extends PromoRecordsRecord {
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? companyInfo;
  @override
  final String? offerChoice;
  @override
  final String? industry;
  @override
  final DateTime? timeCreated;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PromoRecordsRecord(
          [void Function(PromoRecordsRecordBuilder)? updates]) =>
      (new PromoRecordsRecordBuilder()..update(updates))._build();

  _$PromoRecordsRecord._(
      {this.name,
      this.phone,
      this.email,
      this.companyInfo,
      this.offerChoice,
      this.industry,
      this.timeCreated,
      this.ffRef})
      : super._();

  @override
  PromoRecordsRecord rebuild(
          void Function(PromoRecordsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PromoRecordsRecordBuilder toBuilder() =>
      new PromoRecordsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PromoRecordsRecord &&
        name == other.name &&
        phone == other.phone &&
        email == other.email &&
        companyInfo == other.companyInfo &&
        offerChoice == other.offerChoice &&
        industry == other.industry &&
        timeCreated == other.timeCreated &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, companyInfo.hashCode);
    _$hash = $jc(_$hash, offerChoice.hashCode);
    _$hash = $jc(_$hash, industry.hashCode);
    _$hash = $jc(_$hash, timeCreated.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PromoRecordsRecord')
          ..add('name', name)
          ..add('phone', phone)
          ..add('email', email)
          ..add('companyInfo', companyInfo)
          ..add('offerChoice', offerChoice)
          ..add('industry', industry)
          ..add('timeCreated', timeCreated)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PromoRecordsRecordBuilder
    implements Builder<PromoRecordsRecord, PromoRecordsRecordBuilder> {
  _$PromoRecordsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _companyInfo;
  String? get companyInfo => _$this._companyInfo;
  set companyInfo(String? companyInfo) => _$this._companyInfo = companyInfo;

  String? _offerChoice;
  String? get offerChoice => _$this._offerChoice;
  set offerChoice(String? offerChoice) => _$this._offerChoice = offerChoice;

  String? _industry;
  String? get industry => _$this._industry;
  set industry(String? industry) => _$this._industry = industry;

  DateTime? _timeCreated;
  DateTime? get timeCreated => _$this._timeCreated;
  set timeCreated(DateTime? timeCreated) => _$this._timeCreated = timeCreated;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PromoRecordsRecordBuilder() {
    PromoRecordsRecord._initializeBuilder(this);
  }

  PromoRecordsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phone = $v.phone;
      _email = $v.email;
      _companyInfo = $v.companyInfo;
      _offerChoice = $v.offerChoice;
      _industry = $v.industry;
      _timeCreated = $v.timeCreated;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PromoRecordsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PromoRecordsRecord;
  }

  @override
  void update(void Function(PromoRecordsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PromoRecordsRecord build() => _build();

  _$PromoRecordsRecord _build() {
    final _$result = _$v ??
        new _$PromoRecordsRecord._(
            name: name,
            phone: phone,
            email: email,
            companyInfo: companyInfo,
            offerChoice: offerChoice,
            industry: industry,
            timeCreated: timeCreated,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
