import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../play_ui/play_ui.dart';
import '../play_ui/switch/switch_widget.dart';
import '../play_ui/text_widget/text_widget.dart';

import '../screens/dashboard.dart';

import './signup_page.dart';

class LoginPage extends StatefulWidget {
  static const screen_id = "/login_page";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color switch1Color = const Color(0xff24485e);

  bool isSwitched = false;
  String email;
  String password;

  Widget createHeader({String title}) {
    return Column(
      children: <Widget>[
        Container(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 0,
          ),
          height: 72,
          child: TextWidget(
            title,
            fontSize: 24,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 28),
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(left: 120),
                width: 34,
                height: 6,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            Container(),
          ],
        ),
        Container(
          height: 100,
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.close, color: const Color(0xff7099b2)),
          onPressed: () => {Navigator.of(context).pop()},
        ),
        elevation: 0,
        title: Text('Sign in',
            style: GoogleFonts.montserrat(
              color: Theme.of(context).textTheme.bodyText1.color,
            )),
        centerTitle: true,
      ),
      body: //scaffold's body
          Container(
        child: Column(
          children: <Widget>[
            createHeader(
              title: 'Log In to your account & check your wealth.',
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(27.9, 0, 27.9, 0),
                  child: Text(
                    'EMAIL',
                    style: GoogleFonts.montserrat(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff84939d),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(27.9, 0, 27.9, 0),
                  child: TextField(
                      style: GoogleFonts.montserrat(
                        fontSize: 13.33,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffeeeeee),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
                Container(height: 20),
                Container(
                  padding: EdgeInsets.fromLTRB(27.9, 0, 27.9, 0),
                  child: Text(
                    'Password',
                    style: GoogleFonts.montserrat(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff84939d),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(27.9, 0, 27.9, 0),
                  child: TextField(
                      style: GoogleFonts.montserrat(
                        fontSize: 13.33,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffeeeeee),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
                Container(height: 20.2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    LabelFieldWidget(
                      label: "Remember me",
                    ),
                    SwitchWidget()
                  ],
                ),
              ],
            ),
            Container(
              height: 27,
            ),
            ButtonWidget(
              color: Colors.white,
              text: 'Login',
              onTap: () {
                Navigator.of(context).pushReplacementNamed(Dashboard.screen_id);
              },
            ),
            Container(
              height: 47,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Container(
                height: 1,
                color: Theme.of(context).accentIconTheme.color,
              ),
            ),
            Container(
              height: 21,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: TextWidget.title(
                    'Not yet a user ?',
                    fontSize: 13,
                  ),
                ),
                Container(
                  width: 5,
                ),
                ButtonWidget.outline(
                  text: "Sign up",
                  color: Theme.of(context).accentColor,
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SignUpPage.screen_id);
                  },
                ),
              ],
            ),
            Container(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
