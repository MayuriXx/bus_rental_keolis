import 'package:flutter/material.dart';

class NavigationBar {
  Widget bottomNavigationBar(BuildContext context) {
    final _contactRowNavigationBar = Container(
      padding: EdgeInsets.only(bottom: 12.0, top: 12.0),
      color: Color(0xFF015F7D),
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
              color: Color(0xFF015F7D),
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
            color: Color(0xFF015F7D),
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
        color: Color(0xFF015F7D),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [_contactRowNavigationBar, _devisRowNavigationBar],
      ),
    );
  }
}
