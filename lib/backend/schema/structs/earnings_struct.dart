// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EarningsStruct extends FFFirebaseStruct {
  EarningsStruct({
    DateTime? date,
    double? amount,
    DocumentReference? orderInfo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _date = date,
        _amount = amount,
        _orderInfo = orderInfo,
        super(firestoreUtilData);

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;
  void incrementAmount(double amount) => _amount = amount + amount;
  bool hasAmount() => _amount != null;

  // "order_info" field.
  DocumentReference? _orderInfo;
  DocumentReference? get orderInfo => _orderInfo;
  set orderInfo(DocumentReference? val) => _orderInfo = val;
  bool hasOrderInfo() => _orderInfo != null;

  static EarningsStruct fromMap(Map<String, dynamic> data) => EarningsStruct(
        date: data['date'] as DateTime?,
        amount: castToType<double>(data['amount']),
        orderInfo: data['order_info'] as DocumentReference?,
      );

  static EarningsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? EarningsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'amount': _amount,
        'order_info': _orderInfo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'order_info': serializeParam(
          _orderInfo,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static EarningsStruct fromSerializableMap(Map<String, dynamic> data) =>
      EarningsStruct(
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        orderInfo: deserializeParam(
          data['order_info'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['orders'],
        ),
      );

  @override
  String toString() => 'EarningsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EarningsStruct &&
        date == other.date &&
        amount == other.amount &&
        orderInfo == other.orderInfo;
  }

  @override
  int get hashCode => const ListEquality().hash([date, amount, orderInfo]);
}

EarningsStruct createEarningsStruct({
  DateTime? date,
  double? amount,
  DocumentReference? orderInfo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EarningsStruct(
      date: date,
      amount: amount,
      orderInfo: orderInfo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EarningsStruct? updateEarningsStruct(
  EarningsStruct? earnings, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    earnings
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEarningsStructData(
  Map<String, dynamic> firestoreData,
  EarningsStruct? earnings,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (earnings == null) {
    return;
  }
  if (earnings.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && earnings.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final earningsData = getEarningsFirestoreData(earnings, forFieldValue);
  final nestedData = earningsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = earnings.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEarningsFirestoreData(
  EarningsStruct? earnings, [
  bool forFieldValue = false,
]) {
  if (earnings == null) {
    return {};
  }
  final firestoreData = mapToFirestore(earnings.toMap());

  // Add any Firestore field values
  earnings.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEarningsListFirestoreData(
  List<EarningsStruct>? earningss,
) =>
    earningss?.map((e) => getEarningsFirestoreData(e, true)).toList() ?? [];
