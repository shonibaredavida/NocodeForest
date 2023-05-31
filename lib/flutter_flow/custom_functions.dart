import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String>? sentenceToList(String? sentence) {
  return sentence.toString().split(";");
}

bool? filterProductByName(
  String? searchText,
  String? allProductsName,
) {
  String? _searchText;
  if (searchText == "All Categories") {
    _searchText = "";
  } else {
    _searchText = searchText;
  }
  return allProductsName
      .toString()
      .toLowerCase()
      .contains(_searchText.toString().toLowerCase());
}

String? listToSentence(List<String>? listedItems) {
  String newWord = listedItems![0];
  for (var i = 1; i <= listedItems!.length - 1; i++) {
    newWord = newWord + ", " + listedItems[i];
  }
  return newWord;
}

bool? listSearch(
  List<String>? searchText,
  List<String>? allItems,
) {
  List<bool> returnValues = [];
  for (int i = 0; i < allItems!.length; i++) {
    for (int j = 0; j < searchText!.length; j++)
      if (allItems[i] != " " || searchText[j] != " ") {
        returnValues.add(allItems[i].contains(searchText[j]));
      } else {
        returnValues.add(false);
      }
  }
  return returnValues.contains(true);
}

bool? textSearch4items(
  String? searchText,
  String? allItem1,
  String? allItem2,
  String? allItem3,
  String? allItem4,
) {
  List<bool> returnValues = [];

  if (allItem1
      .toString()
      .toLowerCase()
      .contains(searchText.toString().toLowerCase())) {
    returnValues.add(true);
  }
  if (allItem2
      .toString()
      .toLowerCase()
      .contains(searchText.toString().toLowerCase())) {
    returnValues.add(true);
  }
  if (allItem3
      .toString()
      .toLowerCase()
      .contains(searchText.toString().toLowerCase())) {
    returnValues.add(true);
  }
  if (allItem4
      .toString()
      .toLowerCase()
      .contains(searchText.toString().toLowerCase())) {
    returnValues.add(true);
  }
  return returnValues.contains(true);
}

List<int>? getDataForLineGraph(List<OrdersRecord>? orders) {
  List<int>? order = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  // month orders were created
  if (orders == null) {
    return null;
  }
  for (var ord in orders) {
    switch (ord.orderDate!.month) {
      case 1:
        {
          order[0] = order[0] + 1;
          // statements;
        }
        break;

      case 2:
        {
          //statements;
          order[1] = order[1] + 1;
        }
        break;
      case 3:
        {
          //statements;
          order[2] = order[2] + 1;
        }
        break;
      case 4:
        {
          //statements;
          order[3] = order[3] + 1;
        }
        break;
      case 5:
        {
          //statements;

          order[4] = order[4] + 1;
        }
        break;
      case 6:
        {
          //statements;

          order[5] = order[5] + 1;
        }
        break;
      case 7:
        {
          //statements;
          order[6] = order[6] + 1;
        }
        break;
      case 8:
        {
          //statements;
          order[7] = order[7] + 1;
        }
        break;
      case 9:
        {
          //statements;
          order[8] = order[8] + 1;
        }
        break;
      case 10:
        {
          //statements;
          order[9] = order[9] + 1;
        }
        break;
      case 11:
        {
          //statements;
          order[10] = order[10] + 1;
        }
        break;
      case 12:
        {
          //statements;

          order[11] = order[11] + 1;
        }
        break;
      default:
        {
          //statements;
        }
        break;
    }
  }
  return [3, 6, 16];
  //return order;
}

List<String> getLabelLineChart() {
  List<String> months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sept",
    "Oct",
    "Nov",
    "Dec"
  ];
  return ['ere', 'dffg', 'fdknj']; //months;
}
