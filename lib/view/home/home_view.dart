import 'package:bus_rental_keolis/components/app/view.dart';
import 'package:bus_rental_keolis/components/widget/navigation_bar.dart';
import 'package:bus_rental_keolis/view/home/home_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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

    final _rentalContainerHomeView = Container(
      height: 350,
      width: 400,
      decoration: BoxDecoration(
        color: Color(0xFFF4F4F4),
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.9), BlendMode.luminosity),
            image: AssetImage("assets/img/img_rental.png"),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Text(
            "Location d'autocars",
            style: TextStyle(
                color: Color(0xFF015F7D), fontFamily: "Museo", fontSize: 60),
          ),
          Text(
            "Maecenas varius tortor nibh, sit amet tempor nibh finibus.",
            style: TextStyle(color: Color(0xFF7B7062), fontSize: 32),
          ),
        ],
      ),
    );

    final _busContainerHomeView = Container(
      width: 1000,
      height: 600,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/img_bus.png"), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Vous avez besoin d’un moyen de transport collectif :",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text(
              "Louer un car",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "Vous avez besoin d’organiser un voyage de A à Z :",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text(
              "Organiser un voyage",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );

    final _gesturesContainerHomeView = Container(
      padding: EdgeInsets.only(right: 64.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: Container(
              width: 150,
              height: 150,
              color: Color(0xFFF4F4F4),
              child: Image(
                image: AssetImage("assets/icon/icon_person_mask.png"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: Container(
              width: 150,
              height: 150,
              color: Color(0xFFF4F4F4),
              child: Image(
                image: AssetImage("assets/icon/icon_cleaner.png"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: Container(
              width: 150,
              height: 150,
              color: Color(0xFFF4F4F4),
              child: Image(
                image: AssetImage("assets/icon/icon_distance.png"),
              ),
            ),
          ),
          Container(
            width: 150,
            height: 150,
            color: Color(0xFFF4F4F4),
            child: Image(
              image: AssetImage("assets/icon/icon_spray.png"),
            ),
          ),
        ],
      ),
    );

    final _togetherPictureContainerHomeView = Padding(
      padding: EdgeInsets.only(top: 64.0, bottom: 64.0),
      child: Container(
        width: size.width,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/img_together.png"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 64.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 300,
                child: Text(
                  "Ensemble contre le virus",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 44,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 24.0),
                width: 300,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas varius tortor nibh",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    final _bottomContainerHomeView = Padding(
      padding: EdgeInsets.only(top: 48.0),
      child: Container(
        width: size.width,
        height: 300,
        color: Color(0xFF786E65),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [_rentalContainerHomeView, _busContainerHomeView],
                ),
                _togetherPictureContainerHomeView,
                _bottomContainerHomeView,
              ],
            ),
            Container(
                padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 1,
                ),
                child: _gesturesContainerHomeView),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar().bottomNavigationBar(context),
    );
  }
}
