import 'package:flutter/material.dart';
import 'package:lab1bis3r1/login.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  Widget logo() {
    return Container(
      width: 192,
      height: 192,
      child: Image.asset("images/logo.png"),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
    );
  }

  Widget appName() {
    return Container(
      child: Text("Register",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.red.shade200,
              fontFamily: "Bungee")),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
    );
  }

  Widget userNameInput() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: TextFormField(
        controller: username,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          labelText: "UserName",
          labelStyle: TextStyle(
              color: Color.fromARGB(255, 248, 111, 111),
              fontWeight: FontWeight.w800),
          filled: true,
          fillColor: Colors.white,
          icon: Icon(
            Icons.person,
            color: Color.fromARGB(255, 241, 3, 3),
          ),
        ),
      ),
    );
  }

  Widget PasswordInput() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: TextFormField(
        controller: password,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          labelText: "Password",
          labelStyle: TextStyle(
              color: Color.fromARGB(255, 248, 111, 111),
              fontWeight: FontWeight.w800),
          filled: true,
          fillColor: Colors.white,
          icon: Icon(
            Icons.key,
            color: Color.fromARGB(255, 247, 5, 5),
          ),
        ),
      ),
    );
  }

  Widget ConfirmPasswordInput() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: TextFormField(
        controller: confirmpassword,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          labelText: "Confirm Password",
          labelStyle: TextStyle(
              color: Color.fromARGB(255, 248, 111, 111),
              fontWeight: FontWeight.w800),
          filled: true,
          fillColor: Colors.white,
          icon: Icon(
            Icons.key,
            color: Color.fromARGB(255, 247, 5, 5),
          ),
        ),
      ),
    );
  }

  Widget register_btn() {
    return Container(
      height: 26.8,
      child: ElevatedButton(
        child: Text(
          "Register",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.green,
        ),
        onPressed: () {
          Map<String, String> dataRegister = {
            "username": username.text.toString(),
            "password": password.text.toString(),
          };
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => login(comingData: dataRegister)));
        },
      ),
    );
  }

  Widget cancel_btn() {
    return Container(
      height: 26.8,
      child: ElevatedButton(
        child: Text(
          "Cancel",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.green,
        ),
        onPressed: () {
          Map<String, String> dataClear = {
            "username": "",
            "password": "",
          };

          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => login(
                        comingData: dataClear,
                      )));
        },
      ),
    );
  }

  Widget BTNLoginAndSignin() {
    return Container(
        height: 26.8,
        margin: EdgeInsets.only(left: 20),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              register_btn(),
              Padding(
                padding: const EdgeInsets.only(left: 20),
              ),
              cancel_btn()
            ],
          ),
        ));
  }

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/BgLogin.png"), fit: BoxFit.cover),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                logo(),
                appName(),
                userNameInput(),
                PasswordInput(),
                ConfirmPasswordInput(),
                BTNLoginAndSignin()
              ],
            ),
          )),
        ),
      ],
    );
  }
}
