import 'package:bus_rental_keolis/data/remote/countries/countries_client.dart';
import 'package:bus_rental_keolis/theme/keolis_theme.dart';
import 'package:bus_rental_keolis/view/home/home_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class App extends StatelessWidget {
  CountriesClient graphQLConfiguration = CountriesClient();

  @override
  Widget build(BuildContext context) {
    return _app(context);
  }

  Widget _app(BuildContext context) {
    return MaterialApp(
      title: "Location d'autocars",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeView(),
      },
    );
  }
}
