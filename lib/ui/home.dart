import 'package:flutter/material.dart';
import 'package:soil_science_dictionary/Dashboard.dart';
import 'splash.dart';
import 'package:soil_science_dictionary/icons/my_flutter_app_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  String dummyLine =
      "This is a very long subtitle subtile and it's need to be take whole line. This is a very long subtitle subtile and it's need to be take whole line";

  int currentTab = 0;

  TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Card(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                height: 64.0,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                      child: Icon(
                        Icons.search,
                        size: 28,
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: "Search...",
                          border: InputBorder.none,
                        ),
                        autofocus: false,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.keyboard_voice,
                            size: 28.0,
                          ),
                          onPressed: () {
                            //todo add voice search button
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.clear_all,
                          size: 28.0,
                        ),
                        onPressed: () {
                          //todo implement clear history
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  getListItem("This is a title", dummyLine),
                  getListItem("This is a title", dummyLine),
                  getListItem("This is a title", dummyLine),
                  getListItem("This is a title", dummyLine),
                  getListItem("This is a title", dummyLine),
                  getListItem("This is a title", dummyLine),
                  getListItem("This is a title", dummyLine),
                  getListItem("This is a title", dummyLine),
                  getListItem("This is a title", dummyLine),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          MyFlutterApp.help_circled,
          size: 28.0,
        ),
        onPressed: () {
          var subtitle =
              dummyLine + dummyLine + dummyLine + dummyLine + dummyLine;
          showRandomWordSheet(context, "THis is title", subtitle);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      MdiIcons.home,
                      size: 28.0,
                      color: currentTab == 0 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: currentTab == 0 ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    //currentScreen =
                    //Chat(); // if user taps on this dashboard tab will be active
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      MyFlutterApp.heart,
                      size: 28.0,
                      color: currentTab == 1 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      'Favourite',
                      style: TextStyle(
                        color: currentTab == 1 ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    //currentScreen =
                    //Profile(); // if user taps on this dashboard tab will be active
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      MyFlutterApp.pencil_circled,
                      size: 28.0,
                      color: currentTab == 2 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      'Add Word',
                      style: TextStyle(
                        color: currentTab == 2 ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                padding: EdgeInsets.only(right: 80.0),
                onPressed: () {
                  setState(() {
                    //currentScreen =
                    //Settings(); // if user taps on this dashboard tab will be active
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      size: 28.0,
                      color: currentTab == 3 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(
                        color: currentTab == 3 ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void showRandomWordSheet(BuildContext context, title, subtitle) {
    showModalBottomSheet<dynamic>(
        isScrollControlled: true,
        context: context,
        builder: (context) => Wrap(
          children: <Widget>[
            Padding(
              padding:
              const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 6.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w700),
                      maxLines: 1,
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: IconButton(
                      icon: Icon(
                        MyFlutterApp.heart,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        //todo implement text to output
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      icon: Icon(
                        MyFlutterApp.volume,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        //todo implement text to output
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding:
              EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
              child: Text(
                subtitle,
                style: TextStyle(
                  fontSize: 15.0,
                ),
                maxLines: 10,
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ));
  }

  Widget getListItem(title, subtitle) {
    return InkWell(
      splashColor: Colors.blue,
      onTap: (){

      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
              maxLines: 1,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14.0,
              ),
              maxLines: 2,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 15.0,
            )
          ],
        ),
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
      ),
    );
  }
}