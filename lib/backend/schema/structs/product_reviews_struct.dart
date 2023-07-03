// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductReviewsStruct extends FFFirebaseStruct {
  ProductReviewsStruct({
    double? rating,
    String? comment,
    String? buyerIid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _rating = rating,
        _comment = comment,
        _buyerIid = buyerIid,
        super(firestoreUtilData);

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;
  void incrementRating(double amount) => _rating = rating + amount;
  bool hasRating() => _rating != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  set comment(String? val) => _comment = val;
  bool hasComment() => _comment != null;

  // "buyer_Iid" field.
  String? _buyerIid;
  String get buyerIid => _buyerIid ?? '';
  set buyerIid(String? val) => _buyerIid = val;
  bool hasBuyerIid() => _buyerIid != null;

  static ProductReviewsStruct fromMap(Map<String, dynamic> data) =>
      ProductReviewsStruct(
        rating: castToType<double>(data['rating']),
        comment: data['comment'] as String?,
        buyerIid: data['buyer_Iid'] as String?,
      );

  static ProductReviewsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ProductReviewsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'rating': _rating,
        'comment': _comment,
        'buyer_Iid': _buyerIid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
        'comment': serializeParam(
          _comment,
          ParamType.String,
        ),
        'buyer_Iid': serializeParam(
          _buyerIid,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductReviewsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductReviewsStruct(
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
        comment: deserializeParam(
          data['comment'],
          ParamType.String,
          false,
        ),
        buyerIid: deserializeParam(
          data['buyer_Iid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductReviewsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductReviewsStruct &&
        rating == other.rating &&
        comment == other.comment &&
        buyerIid == other.buyerIid;
  }

  @override
  int get hashCode => const ListEquality().hash([rating, comment, buyerIid]);
}

ProductReviewsStruct createProductReviewsStruct({
  double? rating,
  String? comment,
  String? buyerIid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductReviewsStruct(
      rating: rating,
      comment: comment,
      buyerIid: buyerIid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductReviewsStruct? updateProductReviewsStruct(
  ProductReviewsStruct? productReviews, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productReviews
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductReviewsStructData(
  Map<String, dynamic> firestoreData,
  ProductReviewsStruct? productReviews,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productReviews == null) {
    return;
  }
  if (productReviews.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && productReviews.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productReviewsData =
      getProductReviewsFirestoreData(productReviews, forFieldValue);
  final nestedData =
      productReviewsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = productReviews.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductReviewsFirestoreData(
  ProductReviewsStruct? productReviews, [
  bool forFieldValue = false,
]) {
  if (productReviews == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productReviews.toMap());

  // Add any Firestore field values
  productReviews.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductReviewsListFirestoreData(
  List<ProductReviewsStruct>? productReviewss,
) =>
    productReviewss
        ?.map((e) => getProductReviewsFirestoreData(e, true))
        .toList() ??
    [];
