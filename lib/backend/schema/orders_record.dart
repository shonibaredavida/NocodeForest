import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orders_record.g.dart';

abstract class OrdersRecord
    implements Built<OrdersRecord, OrdersRecordBuilder> {
  static Serializer<OrdersRecord> get serializer => _$ordersRecordSerializer;

  @BuiltValueField(wireName: 'buyer_id')
  String? get buyerId;

  @BuiltValueField(wireName: 'seller_id')
  String? get sellerId;

  @BuiltValueField(wireName: 'product_id')
  String? get productId;

  int? get quantity;

  @BuiltValueField(wireName: 'order_status')
  String? get orderStatus;

  @BuiltValueField(wireName: 'payment_status')
  bool? get paymentStatus;

  @BuiltValueField(wireName: 'order_date')
  DateTime? get orderDate;

  @BuiltValueField(wireName: 'order_id')
  String? get orderId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrdersRecordBuilder builder) => builder
    ..buyerId = ''
    ..sellerId = ''
    ..productId = ''
    ..quantity = 0
    ..orderStatus = ''
    ..paymentStatus = false
    ..orderId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrdersRecord._();
  factory OrdersRecord([void Function(OrdersRecordBuilder) updates]) =
      _$OrdersRecord;

  static OrdersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrdersRecordData({
  String? buyerId,
  String? sellerId,
  String? productId,
  int? quantity,
  String? orderStatus,
  bool? paymentStatus,
  DateTime? orderDate,
  String? orderId,
}) {
  final firestoreData = serializers.toFirestore(
    OrdersRecord.serializer,
    OrdersRecord(
      (o) => o
        ..buyerId = buyerId
        ..sellerId = sellerId
        ..productId = productId
        ..quantity = quantity
        ..orderStatus = orderStatus
        ..paymentStatus = paymentStatus
        ..orderDate = orderDate
        ..orderId = orderId,
    ),
  );

  return firestoreData;
}
