import 'package:bus_rental_keolis/components/app/view.dart';
import 'package:bus_rental_keolis/view/home/home_viewmodel.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return View<HomeViewModel>(
      args: [],
      builderView: (context, model, child) => _buildView(context, model),
    );
  }

  Widget _buildView(BuildContext context, HomeViewModel model) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Text("Test"),
      ),
    );
  }
}
