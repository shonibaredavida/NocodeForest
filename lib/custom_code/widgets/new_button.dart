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

import 'package:ade_flutterwave_working_version/core/ade_flutterwave.dart';

class NewButton extends StatefulWidget {
  const NewButton({
    Key? key,
    this.width,
    this.height,
    this.amountTotal,
    this.userInfo,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double? amountTotal;
  final DocumentReference? userInfo;

  @override
  _NewButtonState createState() => _NewButtonState();
}

class _NewButtonState extends State<NewButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          //check if the fields are empty

          //data
          var data = {
            'amount': widget.amountTotal,
            'email': "widget.userInfo.data.email",
            'phone': '07062395776',
            'name': "_fullNameController.text",
            'payment_options': 'card, banktransfer, ussd',
            'title': 'Flutterwave payment',
            'currency': "NGN",
            'tx_ref': "AdeFlutterwave-${DateTime.now().millisecondsSinceEpoch}",
            'icon':
                "https://www.aqskill.com/wp-content/uploads/2020/05/logo-pde.png",
            'public_key': "FLWPUBK_TEST-e0787ab2e5b0b6fcb3d32ce465ad44d0-X",
            'sk_key': 'FLWSECK_TEST-af1af523da3f141f894a26be4b071230-X'
          };

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AdeFlutterWavePay(data),
            ),
          ).then((response) {
            //response is the response from the payment
            // print(response);
          });
        },
        child: const Text('Pay'),
      ),
      height: widget.height,
      width: widget.width,
    );
  }
}
