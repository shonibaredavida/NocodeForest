import 'dart:async';

import 'package:collection/collection.dart';

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

  // "specific_arnings" field.
  List<EarningsStruct>? _specificArnings;
  List<EarningsStruct> get specificArnings => _specificArnings ?? const [];
  bool hasSpecificArnings() => _specificArnings != null;

  // "specific_earnings" field.
  List<EarningsStruct>? _specificEarnings;
  List<EarningsStruct> get specificEarnings => _specificEarnings ?? const [];
  bool hasSpecificEarnings() => _specificEarnings != null;

  void _initializeFields() {
    _totalEarnings = castToType<double>(snapshotData['total_earnings']);
    _lastWithdrawal = castToType<double>(snapshotData['last_withdrawal']);
    _currentEarning = castToType<double>(snapshotData['current_earning']);
    _currentBalance = castToType<double>(snapshotData['current_balance']);
    _sellerId = snapshotData['seller_id'] as String?;
    _specificArnings = getStructList(
      snapshotData['specific_arnings'],
      EarningsStruct.fromMap,
    );
    _specificEarnings = getStructList(
      snapshotData['specific_earnings'],
      EarningsStruct.fromMap,
    );
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

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EarningsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEarningsRecordData({
  double? totalEarnings,
  double? lastWithdrawal,
  double? currentEarning,
  double? currentBalance,
  String? sellerId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'total_earnings': totalEarnings,
      'last_withdrawal': lastWithdrawal,
      'current_earning': currentEarning,
      'current_balance': currentBalance,
      'seller_id': sellerId,
    }.withoutNulls,
  );

  return firestoreData;
}

class EarningsRecordDocumentEquality implements Equality<EarningsRecord> {
  const EarningsRecordDocumentEquality();

  @override
  bool equals(EarningsRecord? e1, EarningsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.totalEarnings == e2?.totalEarnings &&
        e1?.lastWithdrawal == e2?.lastWithdrawal &&
        e1?.currentEarning == e2?.currentEarning &&
        e1?.currentBalance == e2?.currentBalance &&
        e1?.sellerId == e2?.sellerId &&
        listEquality.equals(e1?.specificArnings, e2?.specificArnings) &&
        listEquality.equals(e1?.specificEarnings, e2?.specificEarnings);
  }

  @override
  int hash(EarningsRecord? e) => const ListEquality().hash([
        e?.totalEarnings,
        e?.lastWithdrawal,
        e?.currentEarning,
        e?.currentBalance,
        e?.sellerId,
        e?.specificArnings,
        e?.specificEarnings
      ]);

  @override
  bool isValidKey(Object? o) => o is EarningsRecord;
}
