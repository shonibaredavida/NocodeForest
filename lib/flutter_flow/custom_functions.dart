import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

List<String>? sentenceToList(String? sentence) {
  return sentence.toString().split(";");
}

bool? filterProductByName(
  String? searchText,
  String? allProductsName,
) {
  return allProductsName
      .toString()
      .toLowerCase()
      .contains(searchText.toString().toLowerCase());
}

String? listToSentence(List<String>? listedItems) {
  String newWord = listedItems![0];
  for (var i = 1; i <= listedItems!.length - 1; i++) {
    newWord = newWord + ", " + listedItems[i];
  }
  return newWord;
}
