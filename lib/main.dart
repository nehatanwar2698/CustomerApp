import 'package:flutter/material.dart';
import 'package:okprobe/list/all_list.dart';

import 'home/main_page.dart';
import 'login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test',
      home: Login(),
      // home: MainPage(),
    );
  }
}
