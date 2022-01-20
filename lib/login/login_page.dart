// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:okprobe/UIConstant/ui_constant.dart';
import 'package:okprobe/home/main_page.dart';
import 'package:sign_button/sign_button.dart';

class Login extends StatefulWidget {
  static final String path = "lib/login/login.dart";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
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
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipPath(
                clipper: WaveClipper2(),
                child: Container(
                  child: Column(),
                  width: double.infinity,
                  height: 260,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0x22ff3a5a), Color(0x22fe494d)])),
                ),
              ),
              ClipPath(
                clipper: WaveClipper3(),
                child: Container(
                  child: Column(),
                  width: double.infinity,
                  height: 270,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xff1e90ff), Color(0xff47aff3)])),
                ),
              ),
              ClipPath(
                clipper: WaveClipper1(),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Image.network(
                        "https://cdn-icons-png.flaticon.com/512/3408/3408455.png",
                        width: 150,
                      )
                    ],
                  ),
                  width: double.infinity,
                  height: 270,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xff1e90ff), Color(0xff47aff3)])),
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 30,
          // ),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 32),
          //   child: Material(
          //     elevation: 2.0,
          //     borderRadius: BorderRadius.all(Radius.circular(30)),
          //     child: TextField(
          //       onChanged: (String value) {},
          //       cursorColor: UIConstant.blue,
          //       decoration: InputDecoration(
          //           hintText: "Email",
          //           prefixIcon: Material(
          //             elevation: 0,
          //             borderRadius: BorderRadius.all(Radius.circular(30)),
          //             child: Icon(
          //               Icons.email,
          //               color: UIConstant.blue,
          //             ),
          //           ),
          //           border: InputBorder.none,
          //           contentPadding:
          //               EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
          //     ),
          //   ),
          // ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    // margin: EdgeInsets.only(top: 1),
                    // width: MediaQuery.of(context).size.width / 3,
                    // margin: EdgeInsets.only(
                    //     bottom: MediaQuery.of(context).size.height / 28),
                    child: Text("SIGN IN",
                        style: TextStyle(
                          fontSize: 25,
                          color: UIConstant.blue,
                          fontWeight: FontWeight.w800,
                          fontFamily: UIConstant.fontfamily,
                        ))),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: TextFormField(
                  // style: TextStyle(color: UIConstant.blue),
                  decoration: InputDecoration(
                    labelText: 'ID',
                    labelStyle: TextStyle(
                      fontFamily: UIConstant.fontfamily,
                      color: UIConstant.blue,
                    ),
                    suffixIcon: Icon(
                      Icons.email,
                      color: UIConstant.blue,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: UIConstant.blue)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: UIConstant.blue),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: TextFormField(
                  // style: TextStyle(color: UIConstant.blue),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontFamily: UIConstant.fontfamily,
                      color: UIConstant.blue,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: UIConstant.blue,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: UIConstant.blue)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: UIConstant.blue),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 32),
              //   child: Material(
              //     elevation: 2.0,
              //     borderRadius: BorderRadius.all(Radius.circular(30)),
              //     child: TextField(
              //       onChanged: (String value) {},
              //       cursorColor: UIConstant.blue,
              //       decoration: InputDecoration(
              //           hintText: "Password",
              //           prefixIcon: Material(
              //             elevation: 0,
              //             borderRadius: BorderRadius.all(Radius.circular(30)),
              //             child: Icon(
              //               Icons.lock,
              //               color: UIConstant.blue,
              //             ),
              //           ),
              //           border: InputBorder.none,
              //           contentPadding:
              //               EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              //     ),
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Stay Signed In',
                      style: TextStyle(
                        color: Color(0xff98a5aa),
                        fontWeight: FontWeight.w600,
                        fontFamily: UIConstant.fontfamily,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 30,
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Color(0xff1e90ff)),
                child: FlatButton(
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                    print('Forgotted Password!');
                  },
                ),
              )),

          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "or connect with",
              style: TextStyle(
                  color: Color(0xff98a5aa),
                  fontSize: 15,
                  fontFamily: UIConstant.fontfamily
                  // fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          // SizedBox(
          //   height: 30,
          // ),
          Padding(
            padding: const EdgeInsets.only(
                left: 24.0, right: 24, top: 10, bottom: 24),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SignInButton.mini(
                    buttonType: ButtonType.facebook,
                    onPressed: () {},
                  ),
                  SignInButton.mini(
                    buttonType: ButtonType.google,
                    onPressed: () {},
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 29 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 60);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 15 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * .7, size.height - 40);
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 45);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
