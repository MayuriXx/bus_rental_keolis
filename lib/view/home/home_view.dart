import 'package:bus_rental_keolis/components/app/lifecycle.dart';
import 'package:bus_rental_keolis/components/app/view.dart';
import 'package:bus_rental_keolis/components/widget/app_loading_view.dart';
import 'package:bus_rental_keolis/components/widget/navigation_bar.dart';
import 'package:bus_rental_keolis/theme/keolis_theme.dart';
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
    if (model.lifecycle is OnLoad) {
      return Scaffold(
          resizeToAvoidBottomPadding: false, body: AppLoadingView());
    } else {
      final _carHeaderContainerHomeView = Container(
        padding: EdgeInsets.only(right: 100.0, top: 24.0),
        alignment: Alignment.topRight,
        child: Image(
          image: AssetImage("assets/img/img_header_car.png"),
        ),
      );

      final _rentalContainerHomeView = Container(
        height: 450,
        width: 500,
        decoration: BoxDecoration(
          color: KeolisColors.theme[100],
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.9), BlendMode.luminosity),
              image: AssetImage("assets/img/img_rental.png"),
              fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: Text(
                "Location d'autocars",
                style: TextStyle(
                    color: KeolisColors.theme[300],
                    fontFamily: "Museo",
                    fontSize: 50),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 12.0),
              width: 300,
              child: Text(
                "Maecenas varius tortor nibh, sit amet tempor nibh finibus.",
                style: TextStyle(color: KeolisColors.theme[200], fontSize: 24, fontFamily: "ProximaNova"),
              ),
            ),
          ],
        ),
      );

      final _busContainerHomeView = Align(
        alignment: Alignment.topRight,
        child: Container(
          padding: EdgeInsets.only(right: 64.0),
          width: MediaQuery.of(context).size.width - 400,
          height: 600,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/img_bus.png"), fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 12.0),
                width: 300,
                child: Text(
                  "Vous avez besoin d’un moyen de transport collectif :",
                  style: TextStyle(fontSize: 16, color: Colors.white,fontFamily: "ProximaNova"),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 60,
                width: 280,
                padding: EdgeInsets.only(bottom: 12.0, right: 24.0, top: 6.0),
                child: RaisedButton(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white),
                  ),
                  hoverColor: KeolisColors.theme[300],
                  onPressed: () {},
                  child: Text(
                    "Louer un car".toUpperCase(),
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,fontFamily: "ProximaNova"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 12.0, top: 24.0),
                width: 300,
                child: Text(
                  "Vous avez besoin d'organiser un voyage de A à Z:",
                  style: TextStyle(fontSize: 16, color: Colors.white,fontFamily: "ProximaNova"),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 60,
                width: 280,
                padding: EdgeInsets.only(bottom: 12.0, right: 24.0, top: 6.0),
                child: RaisedButton(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white),
                  ),
                  onPressed: () {},
                  hoverColor: KeolisColors.theme[300],
                  child: Text(
                    "Organiser un voyage".toUpperCase(),
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,fontFamily: "ProximaNova"),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

      final _listButtonsHomeView = Container(
        padding: EdgeInsets.only(top: 64.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 200,
                  height: 250,
                  color: KeolisColors.theme[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image(
                          image:
                              AssetImage("assets/icon/who/icon_text_who.png"),
                        ),
                        alignment: Alignment.topRight,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 12.0, left: 12.0),
                        child: Image(
                          image: AssetImage("assets/icon/icon_who.png"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0, left: 12.0),
                        child: SizedBox(
                          width: 200,
                          child: Text(
                            "Qui sommes-nous ?",
                            style: TextStyle(
                                color: KeolisColors.theme[200],
                                fontSize: 18,
                                fontWeight: FontWeight.bold, fontFamily: "Museo"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 200,
                  height: 250,
                  color: KeolisColors.theme[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image(
                          image: AssetImage(
                              "assets/icon/who/icon_text_center.png"),
                        ),
                        alignment: Alignment.topRight,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 12.0, left: 12.0),
                        child: Image(
                          image: AssetImage("assets/icon/icon_center.png"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0, left: 12.0),
                        child: SizedBox(
                          width: 200,
                          child: Text(
                            "Votre centre le plus proche",
                            style: TextStyle(
                                color: KeolisColors.theme[200],
                                fontSize: 18,
                                fontWeight: FontWeight.bold, fontFamily: "Museo"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 200,
                  height: 250,
                  color: KeolisColors.theme[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image(
                          image: AssetImage(
                              "assets/icon/who/icon_text_engagement.png"),
                        ),
                        alignment: Alignment.topRight,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 12.0, left: 12.0),
                        child: Image(
                          color: KeolisColors.theme[300],
                          image: AssetImage("assets/icon/icon_engagement.png"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0, left: 12.0),
                        child: SizedBox(
                          width: 200,
                          child: Text(
                            "Tous nos engagements",
                            style: TextStyle(
                                color: KeolisColors.theme[300],
                                fontSize: 18,
                                fontWeight: FontWeight.bold, fontFamily: "Museo"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 200,
                  height: 250,
                  color: KeolisColors.theme[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image(
                          image: AssetImage(
                              "assets/icon/who/icon_text_benefit.png"),
                        ),
                        alignment: Alignment.topRight,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 12.0, left: 12.0),
                        child: Image(
                          image: AssetImage("assets/icon/icon_benefit.png"),
                          color: KeolisColors.theme[300],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0, left: 12.0),
                        child: SizedBox(
                          width: 200,
                          child: Text(
                            "Toutes nos prestations",
                            style: TextStyle(
                                color: KeolisColors.theme[300],
                                fontSize: 18,
                                fontWeight: FontWeight.bold, fontFamily: "Museo"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 200,
                height: 250,
                color: KeolisColors.theme[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage("assets/icon/who/icon_text_cars.png"),
                      ),
                      alignment: Alignment.topRight,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 12.0, left: 12.0),
                      child: Image(
                        image: AssetImage("assets/icon/icon_cars.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.0, left: 12.0),
                      child: SizedBox(
                        width: 100,
                        child: Text(
                          "Tous nos véhicules",
                          style: TextStyle(
                              color: KeolisColors.theme[200],
                              fontSize: 18,
                              fontWeight: FontWeight.bold, fontFamily: "Museo"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

      final _listDescriptionHomeView = Container(
        padding: EdgeInsets.only(top: 48.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Container(
                width: 350,
                height: 350,
                padding: EdgeInsets.only(right: 24.0),
                alignment: Alignment.center,
                color: Colors.white,
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  child: Text(
                    model.listCountries[0].name,
                    style: TextStyle(
                        color: KeolisColors.theme[300],
                        fontWeight: FontWeight.bold,
                        fontSize: 28, fontFamily: "Museo"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Container(
                width: 350,
                height: 350,
                padding: EdgeInsets.only(right: 24.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/img_description.png"),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  child: Text(
                    model.listCountries[1].name,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28, fontFamily: "Museo"),
                  ),
                ),
              ),
            ),
            Container(
              width: 350,
              height: 350,
              alignment: Alignment.center,
              color: KeolisColors.theme[300],
              child: Container(
                alignment: Alignment.center,
                width: 200,
                child: Text(
                  model.listCountries[2].name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28, fontFamily: "Museo"),
                ),
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
                color: KeolisColors.theme[100],
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
                color: KeolisColors.theme[100],
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
                color: KeolisColors.theme[100],
                child: Image(
                  image: AssetImage("assets/icon/icon_distance.png"),
                ),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              color: KeolisColors.theme[100],
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
                        fontWeight: FontWeight.bold, fontFamily: "Museo"),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 24.0),
                  width: 300,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas varius tortor nibh",
                    style: TextStyle(color: Colors.white, fontSize: 20,  fontFamily: "ProximaNova"),
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
          height: 200,
          color: KeolisColors.theme[200],
        ),
      );

      return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _carHeaderContainerHomeView,
                  _busContainerHomeView,
                  _listButtonsHomeView,
                  _listDescriptionHomeView,
                  _togetherPictureContainerHomeView,
                  _bottomContainerHomeView,
                ],
              ),
              Container(
                  padding: new EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .2,
                  ),
                  child: _rentalContainerHomeView),
              Container(
                  padding: new EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 1.85,
                  ),
                  child: _gesturesContainerHomeView),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar().bottomNavigationBar(context),
      );
    }
  }
}
