import 'package:bus_rental_keolis/components/app/lifecycle.dart';
import 'package:bus_rental_keolis/components/app/viewmodel.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ViewModel {
  BuildContext _context;
  void load(BuildContext context, List args) async {
    this._context = context;
    setReload(true);
    setLifecycle(OnLoad());
    setLifecycle(OnLoaded());
  }
}
