import 'package:flutter/material.dart';
import 'package:okprobe/UIConstant/ui_constant.dart';
import 'package:okprobe/list/all_list.dart';
import 'package:okprobe/home/main_page.dart';

class NavAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  NavAppBarState createState() => NavAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(70);
}

class NavAppBarState extends State<NavAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 3,

      // title: appBarTitle,
      backgroundColor: UIConstant.blue,
      title: Padding(
        padding: EdgeInsets.only(top: 7),
        child: Material(
          // elevation: 5.0,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: TextField(
            // controller: TextEditingController(text: locations[0]),
            cursorColor: Theme.of(context).primaryColor,
            // style: dropdownMenuItem,
            decoration: InputDecoration(
                hintText: "Company/ Model/ Serial",
                suffixIcon: Material(
                  // elevation: 1.0,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Icon(Icons.search),
                ),
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
          ),
        ),
      ),

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      )),
      centerTitle: true,
    );
  }
}
