import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _userCart = prefs
              .getStringList('ff_userCart')
              ?.map((path) => path.ref)
              .toList() ??
          _userCart;
    });
    _safeInit(() {
      _NotNeedNow = prefs.getBool('ff_NotNeedNow') ?? _NotNeedNow;
    });
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

  List<DocumentReference> _userCart = [];
  List<DocumentReference> get userCart => _userCart;
  set userCart(List<DocumentReference> _value) {
    _userCart = _value;
    prefs.setStringList('ff_userCart', _value.map((x) => x.path).toList());
  }

  void addToUserCart(DocumentReference _value) {
    _userCart.add(_value);
    prefs.setStringList('ff_userCart', _userCart.map((x) => x.path).toList());
  }

  void removeFromUserCart(DocumentReference _value) {
    _userCart.remove(_value);
    prefs.setStringList('ff_userCart', _userCart.map((x) => x.path).toList());
  }

  void removeAtIndexFromUserCart(int _index) {
    _userCart.removeAt(_index);
    prefs.setStringList('ff_userCart', _userCart.map((x) => x.path).toList());
  }

  void updateUserCartAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _userCart[_index] = updateFn(_userCart[_index]);
    prefs.setStringList('ff_userCart', _userCart.map((x) => x.path).toList());
  }

  bool _NotNeedNow = false;
  bool get NotNeedNow => _NotNeedNow;
  set NotNeedNow(bool _value) {
    _NotNeedNow = _value;
    prefs.setBool('ff_NotNeedNow', _value);
  }

  bool _reviewAdded = false;
  bool get reviewAdded => _reviewAdded;
  set reviewAdded(bool _value) {
    _reviewAdded = _value;
  }

  bool _showNotification = false;
  bool get showNotification => _showNotification;
  set showNotification(bool _value) {
    _showNotification = _value;
  }

  bool _showAccountPanel = false;
  bool get showAccountPanel => _showAccountPanel;
  set showAccountPanel(bool _value) {
    _showAccountPanel = _value;
  }

  List<NotificationFormatStruct> _notification = [];
  List<NotificationFormatStruct> get notification => _notification;
  set notification(List<NotificationFormatStruct> _value) {
    _notification = _value;
  }

  void addToNotification(NotificationFormatStruct _value) {
    _notification.add(_value);
  }

  void removeFromNotification(NotificationFormatStruct _value) {
    _notification.remove(_value);
  }

  void removeAtIndexFromNotification(int _index) {
    _notification.removeAt(_index);
  }

  void updateNotificationAtIndex(
    int _index,
    NotificationFormatStruct Function(NotificationFormatStruct) updateFn,
  ) {
    _notification[_index] = updateFn(_notification[_index]);
  }

  bool _feedbackAdded = false;
  bool get feedbackAdded => _feedbackAdded;
  set feedbackAdded(bool _value) {
    _feedbackAdded = _value;
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
