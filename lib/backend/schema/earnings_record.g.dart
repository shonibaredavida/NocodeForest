// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earnings_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EarningsRecord> _$earningsRecordSerializer =
    new _$EarningsRecordSerializer();

class _$EarningsRecordSerializer
    implements StructuredSerializer<EarningsRecord> {
  @override
  final Iterable<Type> types = const [EarningsRecord, _$EarningsRecord];
  @override
  final String wireName = 'EarningsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EarningsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.totalEarnings;
    if (value != null) {
      result
        ..add('total_earnings')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.totalWithdrawals;
    if (value != null) {
      result
        ..add('total_withdrawals')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.lastWithdrawal;
    if (value != null) {
      result
        ..add('last_withdrawal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.currentEarning;
    if (value != null) {
      result
        ..add('current_earning')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.currentBalance;
    if (value != null) {
      result
        ..add('current_balance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.sellerId;
    if (value != null) {
      result
        ..add('seller_id')
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
    value = object.buyerId;
    if (value != null) {
      result
        ..add('buyer_id')
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
  EarningsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EarningsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'total_earnings':
          result.totalEarnings = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'total_withdrawals':
          result.totalWithdrawals = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'last_withdrawal':
          result.lastWithdrawal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'current_earning':
          result.currentEarning = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'current_balance':
          result.currentBalance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'seller_id':
          result.sellerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'product_id':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'buyer_id':
          result.buyerId = serializers.deserialize(value,
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

class _$EarningsRecord extends EarningsRecord {
  @override
  final double? totalEarnings;
  @override
  final double? totalWithdrawals;
  @override
  final double? lastWithdrawal;
  @override
  final double? currentEarning;
  @override
  final double? currentBalance;
  @override
  final String? sellerId;
  @override
  final String? productId;
  @override
  final String? buyerId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EarningsRecord([void Function(EarningsRecordBuilder)? updates]) =>
      (new EarningsRecordBuilder()..update(updates))._build();

  _$EarningsRecord._(
      {this.totalEarnings,
      this.totalWithdrawals,
      this.lastWithdrawal,
      this.currentEarning,
      this.currentBalance,
      this.sellerId,
      this.productId,
      this.buyerId,
      this.ffRef})
      : super._();

  @override
  EarningsRecord rebuild(void Function(EarningsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EarningsRecordBuilder toBuilder() =>
      new EarningsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EarningsRecord &&
        totalEarnings == other.totalEarnings &&
        totalWithdrawals == other.totalWithdrawals &&
        lastWithdrawal == other.lastWithdrawal &&
        currentEarning == other.currentEarning &&
        currentBalance == other.currentBalance &&
        sellerId == other.sellerId &&
        productId == other.productId &&
        buyerId == other.buyerId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalEarnings.hashCode);
    _$hash = $jc(_$hash, totalWithdrawals.hashCode);
    _$hash = $jc(_$hash, lastWithdrawal.hashCode);
    _$hash = $jc(_$hash, currentEarning.hashCode);
    _$hash = $jc(_$hash, currentBalance.hashCode);
    _$hash = $jc(_$hash, sellerId.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, buyerId.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EarningsRecord')
          ..add('totalEarnings', totalEarnings)
          ..add('totalWithdrawals', totalWithdrawals)
          ..add('lastWithdrawal', lastWithdrawal)
          ..add('currentEarning', currentEarning)
          ..add('currentBalance', currentBalance)
          ..add('sellerId', sellerId)
          ..add('productId', productId)
          ..add('buyerId', buyerId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EarningsRecordBuilder
    implements Builder<EarningsRecord, EarningsRecordBuilder> {
  _$EarningsRecord? _$v;

  double? _totalEarnings;
  double? get totalEarnings => _$this._totalEarnings;
  set totalEarnings(double? totalEarnings) =>
      _$this._totalEarnings = totalEarnings;

  double? _totalWithdrawals;
  double? get totalWithdrawals => _$this._totalWithdrawals;
  set totalWithdrawals(double? totalWithdrawals) =>
      _$this._totalWithdrawals = totalWithdrawals;

  double? _lastWithdrawal;
  double? get lastWithdrawal => _$this._lastWithdrawal;
  set lastWithdrawal(double? lastWithdrawal) =>
      _$this._lastWithdrawal = lastWithdrawal;

  double? _currentEarning;
  double? get currentEarning => _$this._currentEarning;
  set currentEarning(double? currentEarning) =>
      _$this._currentEarning = currentEarning;

  double? _currentBalance;
  double? get currentBalance => _$this._currentBalance;
  set currentBalance(double? currentBalance) =>
      _$this._currentBalance = currentBalance;

  String? _sellerId;
  String? get sellerId => _$this._sellerId;
  set sellerId(String? sellerId) => _$this._sellerId = sellerId;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _buyerId;
  String? get buyerId => _$this._buyerId;
  set buyerId(String? buyerId) => _$this._buyerId = buyerId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EarningsRecordBuilder() {
    EarningsRecord._initializeBuilder(this);
  }

  EarningsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalEarnings = $v.totalEarnings;
      _totalWithdrawals = $v.totalWithdrawals;
      _lastWithdrawal = $v.lastWithdrawal;
      _currentEarning = $v.currentEarning;
      _currentBalance = $v.currentBalance;
      _sellerId = $v.sellerId;
      _productId = $v.productId;
      _buyerId = $v.buyerId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EarningsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EarningsRecord;
  }

  @override
  void update(void Function(EarningsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EarningsRecord build() => _build();

  _$EarningsRecord _build() {
    final _$result = _$v ??
        new _$EarningsRecord._(
            totalEarnings: totalEarnings,
            totalWithdrawals: totalWithdrawals,
            lastWithdrawal: lastWithdrawal,
            currentEarning: currentEarning,
            currentBalance: currentBalance,
            sellerId: sellerId,
            productId: productId,
            buyerId: buyerId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
