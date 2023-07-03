// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationFormatStruct extends FFFirebaseStruct {
  NotificationFormatStruct({
    String? message,
    String? sender,
    String? priority,
    DateTime? timeSent,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _message = message,
        _sender = sender,
        _priority = priority,
        _timeSent = timeSent,
        super(firestoreUtilData);

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  // "sender" field.
  String? _sender;
  String get sender => _sender ?? '';
  set sender(String? val) => _sender = val;
  bool hasSender() => _sender != null;

  // "priority" field.
  String? _priority;
  String get priority => _priority ?? '';
  set priority(String? val) => _priority = val;
  bool hasPriority() => _priority != null;

  // "time_sent" field.
  DateTime? _timeSent;
  DateTime? get timeSent => _timeSent;
  set timeSent(DateTime? val) => _timeSent = val;
  bool hasTimeSent() => _timeSent != null;

  static NotificationFormatStruct fromMap(Map<String, dynamic> data) =>
      NotificationFormatStruct(
        message: data['message'] as String?,
        sender: data['sender'] as String?,
        priority: data['priority'] as String?,
        timeSent: data['time_sent'] as DateTime?,
      );

  static NotificationFormatStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? NotificationFormatStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'sender': _sender,
        'priority': _priority,
        'time_sent': _timeSent,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'sender': serializeParam(
          _sender,
          ParamType.String,
        ),
        'priority': serializeParam(
          _priority,
          ParamType.String,
        ),
        'time_sent': serializeParam(
          _timeSent,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static NotificationFormatStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationFormatStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        sender: deserializeParam(
          data['sender'],
          ParamType.String,
          false,
        ),
        priority: deserializeParam(
          data['priority'],
          ParamType.String,
          false,
        ),
        timeSent: deserializeParam(
          data['time_sent'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'NotificationFormatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationFormatStruct &&
        message == other.message &&
        sender == other.sender &&
        priority == other.priority &&
        timeSent == other.timeSent;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([message, sender, priority, timeSent]);
}

NotificationFormatStruct createNotificationFormatStruct({
  String? message,
  String? sender,
  String? priority,
  DateTime? timeSent,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NotificationFormatStruct(
      message: message,
      sender: sender,
      priority: priority,
      timeSent: timeSent,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NotificationFormatStruct? updateNotificationFormatStruct(
  NotificationFormatStruct? notificationFormat, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    notificationFormat
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNotificationFormatStructData(
  Map<String, dynamic> firestoreData,
  NotificationFormatStruct? notificationFormat,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (notificationFormat == null) {
    return;
  }
  if (notificationFormat.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && notificationFormat.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final notificationFormatData =
      getNotificationFormatFirestoreData(notificationFormat, forFieldValue);
  final nestedData =
      notificationFormatData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = notificationFormat.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNotificationFormatFirestoreData(
  NotificationFormatStruct? notificationFormat, [
  bool forFieldValue = false,
]) {
  if (notificationFormat == null) {
    return {};
  }
  final firestoreData = mapToFirestore(notificationFormat.toMap());

  // Add any Firestore field values
  notificationFormat.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNotificationFormatListFirestoreData(
  List<NotificationFormatStruct>? notificationFormats,
) =>
    notificationFormats
        ?.map((e) => getNotificationFormatFirestoreData(e, true))
        .toList() ??
    [];
