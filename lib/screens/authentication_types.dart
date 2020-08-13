import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/getting_started.dart';
import '../widgets/create_divider.dart';
import '../play_ui/button/button_widget.dart';
import '../play_ui/play_ui.dart';

import './login_page.dart';
import './signup_page.dart';

import '../screens/dashboard.dart';

class AuthenticationTypesPage extends StatefulWidget {
  static const screen_id = "/authentication_type";
  @override
  _AuthenticationTypesPageState createState() =>
      _AuthenticationTypesPageState();
}

class _AuthenticationTypesPageState extends State<AuthenticationTypesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).secondaryHeaderColor,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[GettingStarted()],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonWidget(
                      color: Colors.white,
                      text: 'Login',
                      onTap: () {
                        Navigator.of(context).pushNamed(LoginPage.screen_id);
                      },
                    ),
                    Container(
                      height: 9,
                    ),
                    ButtonWidget(
                      color: Colors.white,
                      text: 'Sign up',
                      backgroudColor: Theme.of(context).accentColor,
                      splashColor: Theme.of(context).primaryColor,
                      onTap: () {
                        Navigator.of(context).pushNamed(SignUpPage.screen_id);
                      },
                    ),
                    Container(
                      height: 27.5,
                    ),
                    CreateDivider(),
                    Container(
                      height: 27.5,
                    ),
                    ButtonWidget.icon(
                      text: 'Login with Google',
                      backgroudColor: HexColor('#1c3a4d'),
                      color: HexColor('#58b5ef'),
                      icon: SvgPicture.asset("assets/images/google-icon.svg",
                          height: 20, width: 20),
                      onTap: () {
                        Navigator.of(context).pushNamed(Dashboard.screen_id);
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
