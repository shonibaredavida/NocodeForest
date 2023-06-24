// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class NewCustomWidget extends StatefulWidget {
  const NewCustomWidget({
    Key? key,
    this.width,
    this.height,
    required this.productsInCart,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<DocumentReference> productsInCart;

  @override
  _NewCustomWidgetState createState() => _NewCustomWidgetState();
}

class _NewCustomWidgetState extends State<NewCustomWidget> {
  late double total = 0.0;
  String getTotal(List<DocumentReference> cartProducts) {
    /* for (var prices in cartProducts) {
      total += prices.price;
    }*/

    for (dynamic docRef in cartProducts) {
      docRef.get().then((DocumentSnapshot snapshot) {
        if (snapshot.exists) {
          // Access specific fields
          total = total + double.parse(snapshot.get('price'));
        }
      }).catchError((error) => print('Error getting document: $error'));
    }
    return total.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      getTotal(widget.productsInCart),
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
      textAlign: TextAlign.right,
    );
  }
}
