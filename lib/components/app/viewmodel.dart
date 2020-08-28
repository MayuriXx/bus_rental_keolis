import 'package:bus_rental_keolis/components/app/lifecycle.dart';
import 'package:flutter/material.dart';

abstract class ViewModel with ChangeNotifier {
  bool _mustReload = false;
  bool get mustReload => _mustReload;
  Lifecycle _lifecycle = OnLoad();
  Lifecycle get lifecycle => _lifecycle;

  void load(BuildContext context, List args);

  void setReload(bool mustReload) {
    _mustReload = mustReload;
  }

  void setLifecycle(Lifecycle lifecycle) {
    _lifecycle = lifecycle;
    notifyListeners();
  }
}