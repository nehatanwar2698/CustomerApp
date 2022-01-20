// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:okprobe/UIConstant/ui_constant.dart';
import 'package:okprobe/bottombarpages/home_page.dart';
import 'package:okprobe/widgets/app_bar.dart';
import 'package:okprobe/widgets/bottom_navigation.dart';
import 'package:okprobe/widgets/drawer.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../list/all_list.dart';

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  static List<Widget> pages = <Widget>[
    HomePage(),
    AllList(),
    AllList(),
    AllList(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Icon actionicon = new Icon(Icons.search);
    Widget appBarTitle = new Text("OK Probe");

    return Scaffold(
      appBar: NavAppBar(),
      drawer: NavDrawer(),
      backgroundColor: Color(0xfff0f0f0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: UIConstant.blue,
        onTap: (value) {
          setState(() => currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.content_copy),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.group),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.format_list_bulleted_sharp),
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }

  // _buildDrawer() {
  //   // final String image = images[0];
  //   return ClipPath(
  //     child: Drawer(
  //       child: Container(
  //         padding: const EdgeInsets.only(left: 16.0, right: 40),
  //         decoration: BoxDecoration(
  //             color: Colors.white,
  //             boxShadow: [BoxShadow(color: Colors.black45)]),
  //         width: 300,
  //         child: SafeArea(
  //           child: SingleChildScrollView(
  //             child: Column(
  //               children: <Widget>[
  //                 Container(
  //                   alignment: Alignment.centerRight,
  //                   child: IconButton(
  //                     icon: Icon(
  //                       Icons.power_settings_new,
  //                       color: Colors.grey.shade800,
  //                     ),
  //                     onPressed: () {},
  //                   ),
  //                 ),
  //                 SizedBox(height: 5.0),
  //                 CircleAvatar(
  //                   child: Icon(Icons.person),
  //                 ),

  //                 Text(
  //                   "yoon20@myepsoft.com",
  //                   style: TextStyle(
  //                       color: Colors.black,
  //                       fontSize: 18.0,
  //                       fontWeight: FontWeight.w600),
  //                 ),
  //                 // Text(
  //                 //   "@erika07",
  //                 //   style:
  //                 //       TextStyle(color: Colors.grey.shade800, fontSize: 16.0),
  //                 // ),
  //                 SizedBox(height: 50.0),
  //                 _buildRow(
  //                     IconButton(
  //                         onPressed: () {
  //                           // Navigator.push(
  //                           //   context,
  //                           //   MaterialPageRoute(
  //                           //       builder: (context) => AllList()),
  //                           // );
  //                           // print('home page!');
  //                         },
  //                         icon: Icon(Icons.home)),
  //                     "Home"),
  //                 _buildDivider(),
  //                 _buildRow(
  //                     IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
  //                     "Edit Profile"),
  //                 _buildDivider(),
  //                 _buildRow(
  //                   IconButton(onPressed: () {}, icon: Icon(Icons.person_add)),
  //                   "Add users",
  //                 ),
  //                 // showBadge: true),
  //                 _buildDivider(),
  //                 _buildRow(
  //                   IconButton(
  //                       onPressed: () {}, icon: Icon(Icons.person_search)),
  //                   "View Users",
  //                 ),
  //                 _buildDivider(),
  //                 _buildRow(
  //                     IconButton(
  //                         onPressed: () {},
  //                         icon: Icon(Icons.assignment_outlined)),
  //                     "Notice"),
  //                 _buildDivider(),
  //                 _buildRow(
  //                     IconButton(onPressed: () {}, icon: Icon(Icons.message)),
  //                     "Contact us"),
  //                 _buildDivider(),
  //                 _buildRow(
  //                     IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
  //                     "Settings"),
  //                 _buildDivider(),
  //                 _buildRow(
  //                     IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
  //                     "Sign Out"),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Divider _buildDivider() {
  //   return Divider(
  //     color: Colors.grey.shade600,
  //   );
  // }

  // Widget _buildRow(IconButton icon, String title, {bool showBadge = false}) {
  //   final TextStyle tStyle =
  //       TextStyle(color: Colors.grey.shade800, fontSize: 16.0);
  //   return Container(
  //     // padding: const EdgeInsets.symmetric(vertical: 5.0),
  //     child: Row(children: [
  //       icon,
  //       // color: Colors.grey.shade800,

  //       SizedBox(width: 10.0),
  //       Text(
  //         title,
  //         style: tStyle,
  //       ),
  //       Spacer(),
  //       if (showBadge)
  //         Material(
  //           color: Colors.deepOrange,
  //           elevation: 5.0,
  //           shadowColor: Colors.red,
  //           borderRadius: BorderRadius.circular(5.0),
  //           child: Container(
  //             width: 25,
  //             height: 25,
  //             alignment: Alignment.center,
  //             decoration: BoxDecoration(
  //               color: Colors.deepOrange,
  //               borderRadius: BorderRadius.circular(5.0),
  //             ),
  //             child: Text(
  //               "10+",
  //               style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 12.0,
  //                   fontWeight: FontWeight.bold),
  //             ),
  //           ),
  //         )
  //     ]),
  //   );
  // }
}

// Color normalcolor = Color(0XFFb8b7b4);
// Color selectedcolor = Colors.white;

// BottomAppBar bottomappbar = BottomAppBar(
//   color: UIConstant.blue,
//   child: Container(
//     color: UIConstant.blue,
//     height: 55.0,
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Icon(
//               Icons.home,
//               color: selectedcolor,
//             ),
//             // Text(
//             //   "Home",
//             //   style: TextStyle(color: selectedcolor),
//             // ),
//           ],
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Icon(
//               Icons.content_copy,
//               color: normalcolor,
//             ),
//             // Text(
//             //   "Trending",
//             //   style: TextStyle(color: normalcolor),
//             // ),
//           ],
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Icon(
//               Icons.group,
//               color: normalcolor,
//             ),
//             // Text(
//             //   "Subscriptions",
//             //   style: TextStyle(color: normalcolor),
//             // ),
//           ],
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Icon(
//               Icons.format_list_bulleted_sharp,
//               color: normalcolor,
//             ),
//             // Text(
//             //   "Inbox",
//             //   style: TextStyle(color: normalcolor),
//             // ),
//           ],
//         ),
//         // Column(
//         //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         //   children: <Widget>[
//         //     Icon(
//         //       Icons.settings,
//         //       color: normalcolor,
//         //     ),
//         //     // Text(
//         //     //   "Library",
//         //     //   style: TextStyle(color: normalcolor),
//         //     // ),
//         //   ],
//         // ),
//       ],
//     ),
//   ),
// );
