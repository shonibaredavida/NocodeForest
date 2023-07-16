import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
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

String? getCurrentMonthInWord() {
  String? currentMonthInWord;
  int currentMonth;
  currentMonth = DateTime.now().month;

  switch (currentMonth) {
    case 1:
      {
        currentMonthInWord = "Jan";
      }
      break;

    case 2:
      {
        currentMonthInWord = "Feb";
      }
      break;
    case 3:
      {
        currentMonthInWord = "Mar";
      }
      break;
    case 4:
      {
        currentMonthInWord = "Apr";
      }
      break;
    case 5:
      {
        currentMonthInWord = "May";
      }
      break;
    case 6:
      {
        currentMonthInWord = "Jun";
      }
      break;
    case 7:
      {
        currentMonthInWord = "Jul";
      }
      break;
    case 8:
      {
        currentMonthInWord = "Aug";
      }
      break;
    case 9:
      {
        currentMonthInWord = "Sept";
      }
      break;
    case 10:
      {
        currentMonthInWord = "Oct";
      }
      break;
    case 11:
      {
        currentMonthInWord = "Nov";
      }
      break;
    case 12:
      {
        currentMonthInWord = "Dec";
      }
      break;
    default:
      {}
      break;
  }

  return currentMonthInWord;
}

List<int>? getAYearAgoDataForLineGraph(List<OrdersRecord>? orders) {
  List<int>? monthlyOrders = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

//get the current month
  int currentMonth;
  currentMonth = DateTime.now().month;
  List<int> arrangeMonthlyOrders;

  //removes all orders without values
  if (orders == null) {
    return null;
  }
//this function checks orders with less than or equal to 365 difference from the current date
  String? convertToAgo(ord) {
    Duration diff = DateTime.now().difference(ord.orderDate);
    if (diff.inDays <= 365) {
//gets the Order informtion on a monthly basis
      switch (ord.orderDate!.month) {
        case 1:
          {
            monthlyOrders[0] = monthlyOrders[0] + 1;
          }
          break;

        case 2:
          {
            monthlyOrders[1] = monthlyOrders[1] + 1;
          }
          break;
        case 3:
          {
            monthlyOrders[2] = monthlyOrders[2] + 1;
          }
          break;
        case 4:
          {
            monthlyOrders[3] = monthlyOrders[3] + 1;
          }
          break;
        case 5:
          {
            monthlyOrders[4] = monthlyOrders[4] + 1;
          }
          break;
        case 6:
          {
            monthlyOrders[5] = monthlyOrders[5] + 1;
          }
          break;
        case 7:
          {
            monthlyOrders[6] = monthlyOrders[6] + 1;
          }
          break;
        case 8:
          {
            monthlyOrders[7] = monthlyOrders[7] + 1;
          }
          break;
        case 9:
          {
            monthlyOrders[8] = monthlyOrders[8] + 1;
          }
          break;
        case 10:
          {
            monthlyOrders[9] = monthlyOrders[9] + 1;
          }
          break;
        case 11:
          {
            monthlyOrders[10] = monthlyOrders[10] + 1;
          }
          break;
        case 12:
          {
            monthlyOrders[11] = monthlyOrders[11] + 1;
          }
          break;
        default:
          {}
          break;
      }
    }
    return null;
  }

// this function Rearranges the retrieved order data wrt in order of oldest to most recent month
  rearrangeList(int variable, List<int> list) {
    if (variable >= 0 && variable < list.length) {
      // Get the sublist from the variable index to the end
      final sublist = list.sublist(variable);

      // Get the sublist from the start to the variable index
      final sublist2 = list.sublist(0, variable);

      // Concatenate the two sublists
      final rearrangedList = sublist + sublist2;

      // Update the original list with the rearranged positions
      for (var i = 0; i < list.length; i++) {
        list[i] = rearrangedList[i];
      }
    }
    arrangeMonthlyOrders = list;
    return arrangeMonthlyOrders;
  }

  for (var ord in orders) {
//this checks all orderdata to filter those with difference of 365days
    convertToAgo(ord);
  }
  return rearrangeList(currentMonth, monthlyOrders);
  // return monthlyOrders;
}

String? listToSentence(List<String>? listedItems) {
  String newWord = listedItems![0];
  for (var i = 1; i <= listedItems.length - 1; i++) {
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
  return order;
}

double getTotalRating(ProductsRecord productReviews) {
  double count = 0;
  double totalRate = 0;
  for (var review in productReviews.reviews) {
    count = count + 1;
    totalRate = totalRate + review.rating;
  }
  return totalRate / count;
}

List<int> getLabelLineChart() {
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
  List<int> monthsInt = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  return monthsInt; //months;
}

List<String>? getProductCatergoryList(List<ProductsRecord> products) {
  List<String> productCategoriesList = [];
  List<int> freq = [];
  Set productCategories = {};

  // List<int> checkCategory(List<ProductsRecord> products) {
  List<String> checkCategory(List<ProductsRecord> products) {
    for (var product in products) {
      productCategories.add(product.category);
    }
    for (String productCategory in productCategories) {
      productCategoriesList.add(productCategory);
    }
    //  freq.length = productCategoriesList.length;
    for (int i = 0; i < productCategoriesList.length; i++) {
      freq.add(0);
      freq[i] = 0;
    }
    for (var product in products) {
      for (int cat = 0; cat < productCategoriesList.length; cat++) {
        if (product.category == productCategoriesList[cat]) {
          freq[cat] = freq[cat] + 1;
        }
      }
    }
//    return freq;
    return productCategoriesList;
  }

//ypeError: Instance of 'JSArray<dynamic>': type 'JSArray<dynamic>' is not a subtype of type 'Map<String, int>'
  return checkCategory(products);
}

double? test1(List<ProductsRecord>? products) {
  double total = 0.0;
  double getTotal(List<ProductsRecord> cartProducts) {
    for (var prices in cartProducts) {
      total += prices.price as double;
    }
    return total;
  }

  return getTotal(products!);
}

bool isUserIdInReview(
  ProductsRecord productReviews,
  String userId,
) {
  // check whether userid is in the review in the productReviews
  for (var review in productReviews.reviews) {
    if (review.buyerIid == userId) {
      return true;
    }
  }
  return false;
}

String? passwordValidation(String currentPassword) {
  String response = "";
  int num = 0;
  if (RegExp(r'^.{8,20}$', dotAll: true).hasMatch(currentPassword)) {
    response = "Add the following: ";
    if (currentPassword.contains(new RegExp(r'[0-9]'))) {
    } else {
      num++;
      response += " Number,";
    }
    if (RegExp(r'[A-Z]').hasMatch(currentPassword) ||
        RegExp(r'[a-z]').hasMatch(currentPassword)) {
    } else {
      num++;
      response += " Alphabet,";
    }
    if (currentPassword
        .contains(new RegExp(r'[`~!@#$%\^&*\(\)_+\\\-={}\[\]\/.,<>;]'))) {
    } else {
      num++;
      response += " Special Character,";
    }
    if (num == 0) {
      response = "NA";
    }
  } else {
    response += "Password must be atleast 8 characters";
  }

  /* if(currentPassword!.contains(new RegExp(r'[a-z]') || currentPassword!.contains(new RegExp(r'[a-z]'))){

  }else{
    response+=" Alphabet,"
  }*/

  return response;
}
