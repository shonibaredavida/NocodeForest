import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _cart = prefs.getStringList('ff_cart') ?? _cart;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _cart = [];
  List<String> get cart => _cart;
  set cart(List<String> _value) {
    _cart = _value;
    prefs.setStringList('ff_cart', _value);
  }

  void addToCart(String _value) {
    _cart.add(_value);
    prefs.setStringList('ff_cart', _cart);
  }

  void removeFromCart(String _value) {
    _cart.remove(_value);
    prefs.setStringList('ff_cart', _cart);
  }

  void removeAtIndexFromCart(int _index) {
    _cart.removeAt(_index);
    prefs.setStringList('ff_cart', _cart);
  }

  bool _searchactive = false;
  bool get searchactive => _searchactive;
  set searchactive(bool _value) {
    _searchactive = _value;
  }

  bool _searchactive2 = false;
  bool get searchactive2 => _searchactive2;
  set searchactive2(bool _value) {
    _searchactive2 = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
