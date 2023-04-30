import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBeL-pBRPFWiJ-g2YIVUIgB6qVy53JsL0w",
            authDomain: "nocodeforest-664bc.firebaseapp.com",
            projectId: "nocodeforest-664bc",
            storageBucket: "nocodeforest-664bc.appspot.com",
            messagingSenderId: "666824645054",
            appId: "1:666824645054:web:f91c8304d8cc526d8e81ef"));
  } else {
    await Firebase.initializeApp();
  }
}
