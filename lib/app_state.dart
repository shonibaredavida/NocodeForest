import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
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
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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

  double _sum = 0.0;
  double get sum => _sum;
  set sum(double _value) {
    _sum = _value;
  }

  bool _promoState = true;
  bool get promoState => _promoState;
  set promoState(bool _value) {
    _promoState = _value;
  }

  final _allProductQueryManager = StreamRequestManager<List<ProductsRecord>>();
  Stream<List<ProductsRecord>> allProductQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ProductsRecord>> Function() requestFn,
  }) =>
      _allProductQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAllProductQueryCache() => _allProductQueryManager.clear();
  void clearAllProductQueryCacheKey(String? uniqueKey) =>
      _allProductQueryManager.clearRequest(uniqueKey);
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
