import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage("assets/img/icon.png"),
                  width: 200.0,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Soil Science Dictionary",
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Loboster"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
