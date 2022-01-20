// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:okprobe/UIConstant/ui_constant.dart';
// import 'package:okprobe/widgets/app_bar.dart';
// import 'package:okprobe/widgets/bottom_navigation.dart';
// import 'package:okprobe/widgets/drawer.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Icon actionicon = new Icon(Icons.search);
    Widget appBarTitle = new Text("OK Probe");

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10),
                child: Text("Status ",
                    style: TextStyle(
                      fontSize: 18,
                      // color: UIConstant.blue,
                      fontWeight: FontWeight.w800,
                      fontFamily: UIConstant.fontfamily,
                    )),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text("Total registered printers: 109 ",
                      style: TextStyle(
                        fontSize: 18,
                        // color: UIConstant.blue,
                        fontWeight: FontWeight.w800,
                        fontFamily: UIConstant.fontfamily,
                      )),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new CircularPercentIndicator(
                      radius: 100.0,
                      lineWidth: 13.0,
                      animation: true,
                      percent: 0.7,
                      center: new Text(
                        "61 ea",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      footer: new Text(
                        "Normal",
                        style: new TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 17.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.green,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new CircularPercentIndicator(
                      radius: 100.0,
                      lineWidth: 13.0,
                      animation: true,
                      percent: 0.21,
                      center: new Text(
                        "21 ea",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      footer: new Text(
                        "Caution",
                        style: new TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 17.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.orange,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new CircularPercentIndicator(
                      radius: 100.0,
                      lineWidth: 13.0,
                      animation: true,
                      percent: 0.27,
                      center: new Text(
                        "27 ea",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      footer: new Text(
                        "Warning",
                        style: new TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 17.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Bookmark ",
                  style: TextStyle(
                    fontSize: 19,
                    // color: UIConstant.blue,
                    fontWeight: FontWeight.w800,
                    fontFamily: UIConstant.fontfamily,
                  )),
            ),
          )
        ],
      ),
    ));
  }

  _buildDrawer() {
    // final String image = images[0];
    return ClipPath(
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black45)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.power_settings_new,
                        color: Colors.grey.shade800,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 5.0),
                  CircleAvatar(
                    child: Icon(Icons.person),
                  ),

                  Text(
                    "yoon20@myepsoft.com",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  // Text(
                  //   "@erika07",
                  //   style:
                  //       TextStyle(color: Colors.grey.shade800, fontSize: 16.0),
                  // ),
                  SizedBox(height: 50.0),
                  _buildRow(
                      IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                      "Home"),
                  _buildDivider(),
                  _buildRow(
                      IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                      "Edit Profile"),
                  _buildDivider(),
                  _buildRow(
                    IconButton(onPressed: () {}, icon: Icon(Icons.person_add)),
                    "Add users",
                  ),
                  // showBadge: true),
                  _buildDivider(),
                  _buildRow(
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.person_search)),
                    "View Users",
                  ),
                  _buildDivider(),
                  _buildRow(
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.assignment_outlined)),
                      "Notice"),
                  _buildDivider(),
                  _buildRow(
                      IconButton(onPressed: () {}, icon: Icon(Icons.message)),
                      "Contact us"),
                  _buildDivider(),
                  _buildRow(
                      IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                      "Settings"),
                  _buildDivider(),
                  _buildRow(
                      IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
                      "Sign Out"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: Colors.grey.shade600,
    );
  }

  Widget _buildRow(IconButton icon, String title, {bool showBadge = false}) {
    final TextStyle tStyle =
        TextStyle(color: Colors.grey.shade800, fontSize: 16.0);
    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(children: [
        icon,
        // color: Colors.grey.shade800,

        SizedBox(width: 10.0),
        Text(
          title,
          style: tStyle,
        ),
        Spacer(),
        if (showBadge)
          Material(
            color: Colors.deepOrange,
            elevation: 5.0,
            shadowColor: Colors.red,
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              width: 25,
              height: 25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                "10+",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
      ]),
    );
  }
}
