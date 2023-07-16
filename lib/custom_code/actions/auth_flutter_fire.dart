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

import 'package:firebase_auth/firebase_auth.dart';

Future<String?> authFlutterFire(
  String emailAddress,
  String password,
  bool isLoginInterface,
  String? messageInvalidEmail,
  String? messageWrongPassword,
  String? messageUserNotFound,
) async {
  String returnAuth = "valid";
  List<String> signInMethods = [];
  try {
    if (isLoginInterface) {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password!);
    } else {
      signInMethods =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(emailAddress);
      if (signInMethods.isNotEmpty) {
        returnAuth = "The email address is already in use. Kindly Login";
        return returnAuth;
      }
    }
  } on FirebaseAuthException catch (e) {
    // POSSIBLE ERRORS
    //
    // invalid-email
    // wrong-password
    // user-not-found auth/invalid-password
    //
    String message;
    String criteria = e.message.toString();
    if (criteria.contains('invalid-email')) {
      message = 'invalid-email';
    } else if (e.message!.contains('invalid-password')) {
      message = 'invalid-password';
    } else if (e.message!.contains('wrong-password')) {
      message = 'wrong-password';
    } else if (e.message!.contains('user-not-found')) {
      message = 'user-not-found';
    } else if (e.message!.contains('too-many-requests')) {
      message = 'too-many-requests';
    } else {
      message = "unknown";
    }

    switch (message) {
      case ('invalid-email'):
        returnAuth = messageInvalidEmail ??
            "The email address you entered is not valid.";
        break;
      case 'invalid-password':
        returnAuth = messageWrongPassword ??
            'The email / password you entered is incorrect';
        break;
      case 'wrong-password':
        returnAuth =
            messageWrongPassword ?? "Please check your password and try again.";
        break;
      case 'user-not-found':
        returnAuth = messageUserNotFound ??
            "The user with that email address does not exist.";
        break;
      case 'too-many-requests':
        returnAuth =
            "We are currently experiencing high traffic. Please try again later.";
        break;

      case 'unknown':
        returnAuth =
            "There was an error with your request. Please try again later.";
        break;
    }
  }
  if (returnAuth == "valid") {
    if (isLoginInterface) {
      await FirebaseAuth.instance.signOut();
    }
    return null;
  } else {
    return returnAuth;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
