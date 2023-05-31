import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "buyer_id" field.
  String? _buyerId;
  String get buyerId => _buyerId ?? '';
  bool hasBuyerId() => _buyerId != null;

  // "seller_id" field.
  String? _sellerId;
  String get sellerId => _sellerId ?? '';
  bool hasSellerId() => _sellerId != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "order_status" field.
  String? _orderStatus;
  String get orderStatus => _orderStatus ?? '';
  bool hasOrderStatus() => _orderStatus != null;

  // "payment_status" field.
  bool? _paymentStatus;
  bool get paymentStatus => _paymentStatus ?? false;
  bool hasPaymentStatus() => _paymentStatus != null;

  // "order_date" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  // "order_id" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "seller_info" field.
  DocumentReference? _sellerInfo;
  DocumentReference? get sellerInfo => _sellerInfo;
  bool hasSellerInfo() => _sellerInfo != null;

  // "product_info" field.
  DocumentReference? _productInfo;
  DocumentReference? get productInfo => _productInfo;
  bool hasProductInfo() => _productInfo != null;

  // "total_price" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "cart_ref" field.
  DocumentReference? _cartRef;
  DocumentReference? get cartRef => _cartRef;
  bool hasCartRef() => _cartRef != null;

  void _initializeFields() {
    _buyerId = snapshotData['buyer_id'] as String?;
    _sellerId = snapshotData['seller_id'] as String?;
    _productId = snapshotData['product_id'] as String?;
    _quantity = snapshotData['quantity'] as int?;
    _orderStatus = snapshotData['order_status'] as String?;
    _paymentStatus = snapshotData['payment_status'] as bool?;
    _orderDate = snapshotData['order_date'] as DateTime?;
    _orderId = snapshotData['order_id'] as String?;
    _sellerInfo = snapshotData['seller_info'] as DocumentReference?;
    _productInfo = snapshotData['product_info'] as DocumentReference?;
    _totalPrice = castToType<double>(snapshotData['total_price']);
    _cartRef = snapshotData['cart_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';
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
  DocumentReference? sellerInfo,
  DocumentReference? productInfo,
  double? totalPrice,
  DocumentReference? cartRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'buyer_id': buyerId,
      'seller_id': sellerId,
      'product_id': productId,
      'quantity': quantity,
      'order_status': orderStatus,
      'payment_status': paymentStatus,
      'order_date': orderDate,
      'order_id': orderId,
      'seller_info': sellerInfo,
      'product_info': productInfo,
      'total_price': totalPrice,
      'cart_ref': cartRef,
    }.withoutNulls,
  );

  return firestoreData;
}
