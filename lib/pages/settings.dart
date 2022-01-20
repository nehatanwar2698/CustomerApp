import 'package:flutter/material.dart';
import 'package:okprobe/UIConstant/ui_constant.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isChecked = false;
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return UIConstant.blue;
      }
      return UIConstant.blue;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: UIConstant.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                "Default",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                    decoration: InputDecoration(
                  // suffixIcon: Icon(Icons.email),
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: ' Warning Day(s) ',
                  hintText: '10',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: UIConstant.fontfamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                    decoration: InputDecoration(
                  // suffixIcon: Icon(Icons.email),
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: ' No Usage/day(s) ',
                  hintText: '1000',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: UIConstant.fontfamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                    decoration: InputDecoration(
                  // suffixIcon: Icon(Icons.email),
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: ' Page Count level (page/day)',
                  hintText: '25',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: UIConstant.fontfamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                    decoration: InputDecoration(
                  // suffixIcon: Icon(Icons.email),
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: ' Auto delete printer(day) ',
                  hintText: '1',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: UIConstant.fontfamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 3.0, bottom: 6, left: 10),
                    child: Text(
                      'App  Version :1.0.0 (2021-08-16)',
                      style: TextStyle(
                        color: Color(0xff98a5aa),
                        fontWeight: FontWeight.w700,
                        fontFamily: UIConstant.fontfamily,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 18, left: 18, right: 18, bottom: 18),
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.phone),
                    contentPadding: EdgeInsets.only(bottom: 3),
                    hintText: '10000@okprobe.com',
                    labelText: 'Default sender email',
                    labelStyle: TextStyle(
                      fontSize: 17,
                      fontFamily: UIConstant.fontfamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                    decoration: InputDecoration(
                  // suffixIcon: Icon(Icons.email),
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: ' Additional sender email ',
                  hintText: '1000@okp.co.kr;jun@hpmaill.net;hp`',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: UIConstant.fontfamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                    decoration: InputDecoration(
                  // suffixIcon: Icon(Icons.email),
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: ' Company Name',
                  hintText: 'HPHS123555',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: UIConstant.fontfamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                )),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text("CANCEL",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: UIConstant.blue,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Update",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
