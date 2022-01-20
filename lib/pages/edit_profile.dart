import 'package:flutter/material.dart';
import 'package:okprobe/UIConstant/ui_constant.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout,
              color: UIConstant.blue,
            ),
            onPressed: () {},
          ),
        ],
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
                "Edit Profile",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        right: 10,
                        left: 10,
                        top: 10,
                        child: Container(
                          // height: 40,
                          // width: 40,

                          child: Icon(
                            Icons.person,
                            size: 60,
                            // color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email),
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: 'Email',
                  hintText: 'test@gmail.com',
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: UIConstant.fontfamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                  suffixIcon: Icon(Icons.person),
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: UIConstant.fontfamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'Test',
                )),
              ),
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
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Text(
                      'Grant  to delete',
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
                    top: 14, left: 8, right: 8, bottom: 8),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.phone),
                    contentPadding: EdgeInsets.only(bottom: 3),
                    hintText: '01052924785',
                    labelText: 'Mobile',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: UIConstant.fontfamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.circle_rounded),
                    contentPadding: EdgeInsets.only(bottom: 3),
                    labelText: 'Status',
                    hintText: 'Feeling Happy',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: UIConstant.fontfamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
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
                      "Edit",
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
