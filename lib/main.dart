import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soil_science_dictionary/icons/my_flutter_app_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "This is the title",
                  style: TextStyle(color: Colors.blue, fontSize: 28.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 32.0,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(MyFlutterApp.volume), onPressed: () {}),
                      Text(
                        "Pronounce",
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(MyFlutterApp.text_size, color: Colors.black,), onPressed: () {}),
                      Text(
                        "Text Size",
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(MyFlutterApp.heart), onPressed: () {}),
                      Text(
                        "Bookmark",
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.share), onPressed: () {}),
                      Text(
                        "Share",
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child: Text("Example of Text"),
            ),
            SizedBox(height: 30,),
            Container(
              child: Text("Example of Text"),
            ),
          ],
        ),
      ),
    );
  }
}
