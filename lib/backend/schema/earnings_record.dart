import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EarningsRecord extends FirestoreRecord {
  EarningsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "total_earnings" field.
  double? _totalEarnings;
  double get totalEarnings => _totalEarnings ?? 0.0;
  bool hasTotalEarnings() => _totalEarnings != null;

  // "total_withdrawals" field.
  double? _totalWithdrawals;
  double get totalWithdrawals => _totalWithdrawals ?? 0.0;
  bool hasTotalWithdrawals() => _totalWithdrawals != null;

  // "last_withdrawal" field.
  double? _lastWithdrawal;
  double get lastWithdrawal => _lastWithdrawal ?? 0.0;
  bool hasLastWithdrawal() => _lastWithdrawal != null;

  // "current_earning" field.
  double? _currentEarning;
  double get currentEarning => _currentEarning ?? 0.0;
  bool hasCurrentEarning() => _currentEarning != null;

  // "current_balance" field.
  double? _currentBalance;
  double get currentBalance => _currentBalance ?? 0.0;
  bool hasCurrentBalance() => _currentBalance != null;

  // "seller_id" field.
  String? _sellerId;
  String get sellerId => _sellerId ?? '';
  bool hasSellerId() => _sellerId != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "buyer_id" field.
  String? _buyerId;
  String get buyerId => _buyerId ?? '';
  bool hasBuyerId() => _buyerId != null;

  void _initializeFields() {
    _totalEarnings = castToType<double>(snapshotData['total_earnings']);
    _totalWithdrawals = castToType<double>(snapshotData['total_withdrawals']);
    _lastWithdrawal = castToType<double>(snapshotData['last_withdrawal']);
    _currentEarning = castToType<double>(snapshotData['current_earning']);
    _currentBalance = castToType<double>(snapshotData['current_balance']);
    _sellerId = snapshotData['seller_id'] as String?;
    _productId = snapshotData['product_id'] as String?;
    _buyerId = snapshotData['buyer_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('earnings');

  static Stream<EarningsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EarningsRecord.fromSnapshot(s));

  static Future<EarningsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EarningsRecord.fromSnapshot(s));

  static EarningsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EarningsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EarningsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EarningsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EarningsRecord(reference: ${reference.path}, data: $snapshotData)';
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
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'total_earnings': totalEarnings,
      'total_withdrawals': totalWithdrawals,
      'last_withdrawal': lastWithdrawal,
      'current_earning': currentEarning,
      'current_balance': currentBalance,
      'seller_id': sellerId,
      'product_id': productId,
      'buyer_id': buyerId,
    }.withoutNulls,
  );

  return firestoreData;
}
