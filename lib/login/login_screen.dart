import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:nevis_demo/home/home_tab.dart';
import 'package:nevis_demo/login/login_textfield.dart';
import 'package:nevis_demo/nevis_tab_bar.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.indigoAccent,
      resizeToAvoidBottomInset: false,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: MediaQuery.of(context).size.height / 3.5,
                    child: Image.asset(
                        'assets/nevis_logos/full_nevis_logo_black_text.png')),
                LoginTextField(title: "Username"),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                LoginTextField(title: "Password"),
                Padding(padding: EdgeInsets.only(bottom: 30)),
                MaterialButton(
                    minWidth: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 13,
                    color: Colors.tealAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(100.0),
                    ),
                    child: Text("Login", style: GoogleFonts.ubuntu(fontSize: 25),),
                    onPressed: () {
                      Navigator.pushNamed(context, '/NevisTabBar');
                    }),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                MaterialButton(
                    minWidth: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 13,
                    color: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(100.0),
                    ),
                    child: Text("Create Account", style: GoogleFonts.ubuntu(fontSize: 25),),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/NevisTabBar');
                    }),
              ],
            )
          ]),
    );
  }
}
