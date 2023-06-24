import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartDataRecord extends FirestoreRecord {
  ChartDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "x_axis" field.
  String? _xAxis;
  String get xAxis => _xAxis ?? '';
  bool hasXAxis() => _xAxis != null;

  // "y_axis" field.
  int? _yAxis;
  int get yAxis => _yAxis ?? 0;
  bool hasYAxis() => _yAxis != null;

  void _initializeFields() {
    _xAxis = snapshotData['x_axis'] as String?;
    _yAxis = castToType<int>(snapshotData['y_axis']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chartData');

  static Stream<ChartDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChartDataRecord.fromSnapshot(s));

  static Future<ChartDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChartDataRecord.fromSnapshot(s));

  static ChartDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChartDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChartDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChartDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChartDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChartDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChartDataRecordData({
  String? xAxis,
  int? yAxis,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'x_axis': xAxis,
      'y_axis': yAxis,
    }.withoutNulls,
  );

  return firestoreData;
}
