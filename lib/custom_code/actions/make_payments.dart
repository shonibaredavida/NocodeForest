// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future makePayments(OrdersRecord orderDocument) async {
  // Add your function code here!
  var db = FirebaseFirestore.instance;

  int newProductSales;
  //1 update the bought product info
  var prodRef = db.collection("product");
  List<String> prodIdsList = orderDocument!.productIds;
  for (var i = 0; i < prodIdsList.length; i++) {
    // reading the deisred product info
    await prodRef
        .where('product_id', isEqualTo: prodIdsList[i])
        .get()
        .then((QuerySnapshot snap) {
      DocumentSnapshot prodDoc = snap.docs.first;
      // updating the number of product sold
      db
          .collection("products")
          .doc(prodDoc.id)
          .update({'num_of_sales': FieldValue.increment(1)})
          .then((_) {})
          .catchError((error) {
            print('Error incrementing value: $error');
          });
    });
  }

  //2  update earnings from order to respective sellers
  for (var i = 0; i < orderDocument!.sellerIds.length; i++) {}
  ;

  //3 update buyers downloaded items
  for (var i = 0; i < prodIdsList.length; i++) {
    // reading the deisred product info
    await prodRef
        .where('product_id', isEqualTo: prodIdsList[i])
        .get()
        .then((QuerySnapshot snap) {
      DocumentSnapshot prodDoc = snap.docs.first;
      // updating the number of product sold
      db
          .collection("products")
          .doc(prodDoc.id)
          .update({'num_of_sales': FieldValue.increment(1)})
          .then((_) {})
          .catchError((error) {
            print('Error incrementing value: $error');
          });
    });
  }

  // Add your function code here!
}
