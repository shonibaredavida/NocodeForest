// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WithdrawalStruct extends FFFirebaseStruct {
  WithdrawalStruct({
    DateTime? withdrawalDate,
    double? amount,
    double? balance,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _withdrawalDate = withdrawalDate,
        _amount = amount,
        _balance = balance,
        super(firestoreUtilData);

  // "withdrawal_date" field.
  DateTime? _withdrawalDate;
  DateTime? get withdrawalDate => _withdrawalDate;
  set withdrawalDate(DateTime? val) => _withdrawalDate = val;
  bool hasWithdrawalDate() => _withdrawalDate != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;
  void incrementAmount(double amount) => _amount = amount + amount;
  bool hasAmount() => _amount != null;

  // "balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  set balance(double? val) => _balance = val;
  void incrementBalance(double amount) => _balance = balance + amount;
  bool hasBalance() => _balance != null;

  static WithdrawalStruct fromMap(Map<String, dynamic> data) =>
      WithdrawalStruct(
        withdrawalDate: data['withdrawal_date'] as DateTime?,
        amount: castToType<double>(data['amount']),
        balance: castToType<double>(data['balance']),
      );

  static WithdrawalStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? WithdrawalStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'withdrawal_date': _withdrawalDate,
        'amount': _amount,
        'balance': _balance,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'withdrawal_date': serializeParam(
          _withdrawalDate,
          ParamType.DateTime,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'balance': serializeParam(
          _balance,
          ParamType.double,
        ),
      }.withoutNulls;

  static WithdrawalStruct fromSerializableMap(Map<String, dynamic> data) =>
      WithdrawalStruct(
        withdrawalDate: deserializeParam(
          data['withdrawal_date'],
          ParamType.DateTime,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        balance: deserializeParam(
          data['balance'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'WithdrawalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WithdrawalStruct &&
        withdrawalDate == other.withdrawalDate &&
        amount == other.amount &&
        balance == other.balance;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([withdrawalDate, amount, balance]);
}

WithdrawalStruct createWithdrawalStruct({
  DateTime? withdrawalDate,
  double? amount,
  double? balance,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WithdrawalStruct(
      withdrawalDate: withdrawalDate,
      amount: amount,
      balance: balance,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WithdrawalStruct? updateWithdrawalStruct(
  WithdrawalStruct? withdrawal, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    withdrawal
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWithdrawalStructData(
  Map<String, dynamic> firestoreData,
  WithdrawalStruct? withdrawal,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (withdrawal == null) {
    return;
  }
  if (withdrawal.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && withdrawal.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final withdrawalData = getWithdrawalFirestoreData(withdrawal, forFieldValue);
  final nestedData = withdrawalData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = withdrawal.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWithdrawalFirestoreData(
  WithdrawalStruct? withdrawal, [
  bool forFieldValue = false,
]) {
  if (withdrawal == null) {
    return {};
  }
  final firestoreData = mapToFirestore(withdrawal.toMap());

  // Add any Firestore field values
  withdrawal.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWithdrawalListFirestoreData(
  List<WithdrawalStruct>? withdrawals,
) =>
    withdrawals?.map((e) => getWithdrawalFirestoreData(e, true)).toList() ?? [];
