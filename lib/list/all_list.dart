// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:okprobe/UIConstant/ui_constant.dart';
import 'package:okprobe/widgets/app_bar.dart';
import 'package:okprobe/widgets/bottom_navigation.dart';
import 'package:okprobe/widgets/drawer.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AllList extends StatefulWidget {
  @override
  AllListState createState() => AllListState();
}

class AllListState extends State<AllList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Icon actionicon = new Icon(Icons.search);
    Widget appBarTitle = new Text("OK Probe");

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [],
              ),
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                new BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              height: 130,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    height: MediaQuery.of(context).size.height * 0.20,
                    padding: const EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.green,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "3",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          "Normal".toUpperCase(),
                          style: TextStyle(
                            fontFamily: UIConstant.fontfamily,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 14, bottom: 14),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  "Customer",
                                  overflow: TextOverflow.fade,
                                  softWrap: true,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: UIConstant.fontfamily,
                                      fontSize: 19),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Serial No:345635 ",
                                style: TextStyle(
                                  fontFamily: UIConstant.fontfamily,
                                ),
                              ),
                              SizedBox(
                                width: 28,
                              ),
                              Flexible(
                                child: Text(
                                  "22342 ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: UIConstant.fontfamily,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "27-10-2021 11:30",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontFamily: UIConstant.fontfamily),
                              ),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                new BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              height: 130,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    height: MediaQuery.of(context).size.height * 0.20,
                    padding: const EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.orange,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "3",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          "Caution".toUpperCase(),
                          style: TextStyle(
                            fontFamily: UIConstant.fontfamily,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 14, bottom: 14),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  "Customer",
                                  overflow: TextOverflow.fade,
                                  softWrap: true,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: UIConstant.fontfamily,
                                      fontSize: 19),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Serial No:345635 ",
                                style: TextStyle(
                                  fontFamily: UIConstant.fontfamily,
                                ),
                              ),
                              SizedBox(
                                width: 28,
                              ),
                              Flexible(
                                child: Text(
                                  "22342 ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: UIConstant.fontfamily,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "27-10-2021 11:30",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontFamily: UIConstant.fontfamily),
                              ),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                new BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              height: 130,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    height: MediaQuery.of(context).size.height * 0.20,
                    padding: const EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "3",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          "Warning".toUpperCase(),
                          style: TextStyle(
                            fontFamily: UIConstant.fontfamily,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 14, bottom: 14),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  "Customer",
                                  overflow: TextOverflow.fade,
                                  softWrap: true,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: UIConstant.fontfamily,
                                      fontSize: 19),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Serial No:345635 ",
                                style: TextStyle(
                                  fontFamily: UIConstant.fontfamily,
                                ),
                              ),
                              SizedBox(
                                width: 28,
                              ),
                              Flexible(
                                child: Text(
                                  "22342 ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: UIConstant.fontfamily,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "27-10-2021 11:30",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontFamily: UIConstant.fontfamily),
                              ),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                new BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              height: 130,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    height: MediaQuery.of(context).size.height * 0.20,
                    padding: const EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.green,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "3",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          "Normal".toUpperCase(),
                          style: TextStyle(
                            fontFamily: UIConstant.fontfamily,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 14, bottom: 14),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  "Customer",
                                  overflow: TextOverflow.fade,
                                  softWrap: true,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: UIConstant.fontfamily,
                                      fontSize: 19),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Serial No:345635 ",
                                style: TextStyle(
                                  fontFamily: UIConstant.fontfamily,
                                ),
                              ),
                              SizedBox(
                                width: 28,
                              ),
                              Flexible(
                                child: Text(
                                  "22342 ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: UIConstant.fontfamily,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "27-10-2021 11:30",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontFamily: UIConstant.fontfamily),
                              ),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
