import 'package:flutter/material.dart';
import 'package:lab1bis3r1/register.dart';

class login extends StatefulWidget {
  final Map<String, String> comingData;

  const login({Key? key, required this.comingData}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
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
      child: Text("Gun Skins Shop",
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
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          labelText: widget.comingData['username'],
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
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          labelText: widget.comingData['password'],
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

  Widget login_btn() {
    return Container(
      height: 26.8,
      child: ElevatedButton(
        child: Text(
          "Login",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.green,
        ),
        onPressed: () {
          print("Login");
        },
      ),
    );
  }

  Widget register_btn() {
    return Container(
      height: 26.8,
      child: ElevatedButton(
        child: Text(
          "register",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.green,
        ),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => register()));
        },
      ),
    );
  }

  Widget compound_btn() {
    return Container(
        height: 26.8,
        margin: EdgeInsets.only(left: 20),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              login_btn(),
              Padding(
                padding: const EdgeInsets.only(left: 20),
              ),
              register_btn()
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
                compound_btn()
              ],
            ),
          )),
        ),
      ],
    );
  }
}
