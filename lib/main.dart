import 'package:bus_rental_keolis/app.dart';
import 'package:bus_rental_keolis/view/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Portrait mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp((App()));
}