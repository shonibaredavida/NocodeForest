import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'earnings_record.g.dart';

abstract class EarningsRecord
    implements Built<EarningsRecord, EarningsRecordBuilder> {
  static Serializer<EarningsRecord> get serializer =>
      _$earningsRecordSerializer;

  @BuiltValueField(wireName: 'total_earnings')
  double? get totalEarnings;

  @BuiltValueField(wireName: 'total_withdrawals')
  double? get totalWithdrawals;

  @BuiltValueField(wireName: 'last_withdrawal')
  double? get lastWithdrawal;

  @BuiltValueField(wireName: 'current_earning')
  double? get currentEarning;

  @BuiltValueField(wireName: 'current_balance')
  double? get currentBalance;

  @BuiltValueField(wireName: 'seller_id')
  String? get sellerId;

  @BuiltValueField(wireName: 'product_id')
  String? get productId;

  @BuiltValueField(wireName: 'buyer_id')
  String? get buyerId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EarningsRecordBuilder builder) => builder
    ..totalEarnings = 0.0
    ..totalWithdrawals = 0.0
    ..lastWithdrawal = 0.0
    ..currentEarning = 0.0
    ..currentBalance = 0.0
    ..sellerId = ''
    ..productId = ''
    ..buyerId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('earnings');

  static Stream<EarningsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EarningsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EarningsRecord._();
  factory EarningsRecord([void Function(EarningsRecordBuilder) updates]) =
      _$EarningsRecord;

  static EarningsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEarningsRecordData({
  double? totalEarnings,
  double? totalWithdrawals,
  double? lastWithdrawal,
  double? currentEarning,
  double? currentBalance,
  String? sellerId,
  String? productId,
  String? buyerId,
}) {
  final firestoreData = serializers.toFirestore(
    EarningsRecord.serializer,
    EarningsRecord(
      (e) => e
        ..totalEarnings = totalEarnings
        ..totalWithdrawals = totalWithdrawals
        ..lastWithdrawal = lastWithdrawal
        ..currentEarning = currentEarning
        ..currentBalance = currentBalance
        ..sellerId = sellerId
        ..productId = productId
        ..buyerId = buyerId,
    ),
  );

  return firestoreData;
}
