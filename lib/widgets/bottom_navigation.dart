import 'package:flutter/material.dart';
import 'package:okprobe/UIConstant/ui_constant.dart';
import 'package:okprobe/list/all_list.dart';
import 'package:okprobe/home/main_page.dart';

class BottomNavigation extends StatefulWidget {
  @override
  BottomNavigationState createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
