import 'package:flutter/material.dart';
import 'package:okprobe/UIConstant/ui_constant.dart';
import 'package:okprobe/list/all_list.dart';
import 'package:okprobe/home/main_page.dart';
import 'package:okprobe/pages/add_users.dart';
import 'package:okprobe/pages/edit_profile.dart';
import 'package:okprobe/pages/settings.dart';

class NavDrawer extends StatefulWidget {
  @override
  NavDrawerState createState() => NavDrawerState();
}

class NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            accountName: Text(
              "Test",
              style: TextStyle(
                  fontFamily: UIConstant.fontfamily,
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              "Test@gmail.com",
              style: TextStyle(
                  fontFamily: UIConstant.fontfamily,
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: UIConstant.blue,
              radius: 10,
              child: Icon(
                Icons.person,
                color: UIConstant.white,
                size: 30,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
              print('home');
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Edit profile"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text("Add users"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddUsers()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person_search),
            title: Text("View users"),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => HomePage()),
              // );
              print('view user');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment_outlined),
            title: Text("Notice"),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => HomePage()),
              // );
              print('notice');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("Contact us"),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => HomePage()),
              // );
              print('contact us');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
              print('setting');
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Sign Out"),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => HomePage()),
              // );
              print('sign out');
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
