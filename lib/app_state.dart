import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
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

  List<DocumentReference> _cart = [];
  List<DocumentReference> get cart => _cart;
  set cart(List<DocumentReference> _value) {
    _cart = _value;
  }

  void addToCart(DocumentReference _value) {
    _cart.add(_value);
  }

  void removeFromCart(DocumentReference _value) {
    _cart.remove(_value);
  }

  void removeAtIndexFromCart(int _index) {
    _cart.removeAt(_index);
  }

  void updateCartAtIndex(
    int _index,
    Function(DocumentReference) updateFn,
  ) {
    updateFn(_cart[_index]);
  }

  double _sum = 0.0;
  double get sum => _sum;
  set sum(double _value) {
    _sum = _value;
  }

  bool _promoState = false;
  bool get promoState => _promoState;
  set promoState(bool _value) {
    _promoState = _value;
  }

  int _well = 12;
  int get well => _well;
  set well(int _value) {
    _well = _value;
  }

  int _wellless = 33;
  int get wellless => _wellless;
  set wellless(int _value) {
    _wellless = _value;
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
