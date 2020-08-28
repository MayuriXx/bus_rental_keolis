import 'package:bus_rental_keolis/view/home/home_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*return MultiProvider(
      providers: providers,
      child: _app(context),
    );*/
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
