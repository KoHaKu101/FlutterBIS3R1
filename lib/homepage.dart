import 'package:flutter/material.dart';
import 'package:lab1bis3r1/login.dart';

class homepage extends StatefulWidget {
  final Map<String, String> comingData;
  const homepage({Key? key, required this.comingData}) : super(key: key);
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
      child: Text("Welcome",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.red.shade200,
              fontFamily: "Bungee")),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
    );
  }

  Widget username() {
    return Container(
      child: Text("Mr." + widget.comingData['username'].toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.red.shade200,
              fontFamily: "Bungee")),
      margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
    );
  }

  Widget logout_btn() {
    return Container(
      height: 26.8,
      child: ElevatedButton(
        child: Text(
          "Logout",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: Colors.transparent,
          backgroundColor: Color.fromARGB(255, 255, 0, 0),
        ),
        onPressed: () {
          Map<String, String> dataClear = {'username': '', 'password': ''};
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => login(comingData: dataClear)));
        },
      ),
    );
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
              children: [logo(), appName(), username(), logout_btn()],
            ),
          )),
        ),
      ],
    );
  }
}
