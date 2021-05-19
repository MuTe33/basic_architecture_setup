import 'package:flutter/cupertino.dart';

enum ViewState { idle, loading, error }

abstract class BaseViewModel extends ChangeNotifier {
  ViewState _state = ViewState.idle;
  bool _mounted = true;

  ViewState get state => _state;

  void _setState(ViewState viewState) {
    if (_mounted) {
      _state = viewState;
      notifyListeners();
    }
  }

  void setIdle() => _setState(ViewState.idle);

  void setLoading() => _setState(ViewState.loading);

  bool isLoading() => _state == ViewState.loading;

  @override
  void dispose() {
    _mounted = false;
    super.dispose();
  }
}
