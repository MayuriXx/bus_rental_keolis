import 'package:bus_rental_keolis/theme/keolis_theme.dart';
import 'package:flutter/material.dart';

class NavigationBar {
  Widget bottomNavigationBar(BuildContext context) {
    final _contactRowNavigationBar = Container(
      padding: EdgeInsets.only(bottom: 12.0, top: 12.0),
      color: KeolisColors.theme[300],
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Image(
              image: AssetImage("assets/icon/icon_contact.png"),
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Text(
              "Info & Contact",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );

    final _devisRowNavigationBar = Container(
      padding: EdgeInsets.only(bottom: 12.0, top: 12.0, right: 24.0),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.message,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Text(
              "Obtenez un devis gratuit",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: RaisedButton(
              color: KeolisColors.theme[300],
              onPressed: () {},
              child: Text(
                "Louer un car",
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.white),
              ),
            ),
          ),
          RaisedButton(
            color: KeolisColors.theme[300],
            onPressed: () {},
            child: Text(
              "Organiser un voyage",
              style: TextStyle(color: Colors.white),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.white),
            ),
          ),
        ],
      ),
    );

    return Container(
      height: 60,
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
        color: KeolisColors.theme[300],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [_contactRowNavigationBar, _devisRowNavigationBar],
      ),
    );
  }
}
