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

import 'package:pie_chart/pie_chart.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({
    Key? key,
    this.width,
    this.height,
    required this.products,
    this.displayLabels,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<ProductsRecord> products;
  final bool? displayLabels;

  @override
  _PieChartWidgetState createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  List<String> productCategoriesList = [];
  Map<String, double> dataMap = {
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };

  List<String> checkCategory(List<ProductsRecord> products) {
    Set _productCategories = {};
    for (var product in products) {
      _productCategories.add(product.category);
    }
    for (String productCategory in _productCategories) {
      productCategoriesList.add(productCategory);
    }
    return productCategoriesList;
  }

  @override
  didChangeDependencies() {
    checkCategory(widget.products);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: PieChart(
        dataMap: dataMap,
        chartRadius: 120,
        chartLegendSpacing: 24,
        chartType: ChartType.ring,
        centerText: "Total Sales",
        ringStrokeWidth: 50,
        legendOptions: LegendOptions(
          showLegendsInRow: false,
          legendPosition: LegendPosition.bottom,
          showLegends: true,
          legendTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        chartValuesOptions: ChartValuesOptions(
          showChartValueBackground: false,
          showChartValues: true,
          showChartValuesInPercentage: true,
          showChartValuesOutside: true,
          decimalPlaces: 1,
        ),
      ),
    );
  }
}
