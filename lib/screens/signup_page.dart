import 'package:flutter/material.dart';
import '../play_ui/play_ui.dart';

import 'package:google_fonts/google_fonts.dart';

import './login_page.dart';
import './dashboard.dart';

class SignUpPage extends StatefulWidget {
  static const screen_id = "/sign_up";
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isSwitched = false;
  Color checkbox1Color = const Color(0xff112a39);
  Color checkboxborderColor1 = const Color(0xff7099b2);

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff112a39),
      //Appbar hidden because we dont use them so if you want delete them.
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.close, color: const Color(0xff7099b2)),
          onPressed: () => {Navigator.of(context).pop()},
        ),
        elevation: 0,
        title: Text('Sign up',
            style: GoogleFonts.montserrat(
              color: Theme.of(context).textTheme.bodyText1.color,
            )),
        centerTitle: true,
      ),
      body: //scaffold's body
          SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 15.7,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(27.9, 0, 27.9, 0),
                height: 72,
                child: Text(
                  'Great men always kept records of their coin.',
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    color: Theme.of(context).textTheme.bodyText1.color,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(27.9, 0, 0, 0),
                    child: Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 120),
                        width: 33.33,
                        height: 5.33,
                        color: Theme.of(context).iconTheme.color),
                  ),
                  Container(),
                ],
              ),
              Container(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(27.9, 0, 27.9, 0),
                    child: Text(
                      'USERNAME',
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
                      'CONFIRM EMAIL',
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
                        obscureText: true,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                  Container(height: 20.2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(27.9, 0, 0, 0),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            border: Border.all(color: checkboxborderColor1),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 250),
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: checkbox1Color,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Container(
                                child: Theme(
                              data: ThemeData(
                                  unselectedWidgetColor: Colors.transparent),
                              child: Checkbox(
                                checkColor: Colors.white,
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                    print(isSwitched);
                                    if (value == true) {
                                      checkbox1Color = const Color(0xff315fd6);
                                      checkboxborderColor1 =
                                          const Color(0xff315fd6);
                                    } else {
                                      checkbox1Color = const Color(0xff112a39);
                                      checkboxborderColor1 =
                                          const Color(0xff7099b2);
                                    }
                                  });
                                },
                                activeColor: Colors.transparent,
                              ),
                            )),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Text(
                          'I Accept Term & Conditions',
                          style: GoogleFonts.montserrat(
                            fontSize: 13.33,
                            color: Theme.of(context).textTheme.bodyText1.color,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 26.7,
              ),
              ButtonWidget(
                text: 'Sign up',
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(Dashboard.screen_id);
                },
              ),
              Container(
                height: 46.5,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(27.9, 0, 27.9, 0),
                child: Container(
                  height: 1,
                  color: const Color(0xff23475d),
                ),
              ),
              Container(
                height: 20.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Already signed ?',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 12.67,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).textTheme.bodyText1.color,
                      ),
                    ),
                  ),
                  Container(
                    width: 5,
                  ),
                  ButtonWidget.outline(
                    text: "Sign In",
                    color: Theme.of(context).accentColor,
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(LoginPage.screen_id);
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
      ),
    );
  }
}
