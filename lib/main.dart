import 'package:flutter/material.dart';
import './screens/authentication_types.dart';
import './screens/login_page.dart';
import './screens/signup_page.dart';
import './screens/dashboard.dart';
import './screens/select_transaction.dart';
import './screens/records.dart';
import './screens/wallets.dart';

import './theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with ThemeMixin {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: getTheme(context),
      home: AuthenticationTypesPage(),
      routes: {
        AuthenticationTypesPage.screen_id: (context) =>
            AuthenticationTypesPage(),
        LoginPage.screen_id: (context) => LoginPage(),
        SignUpPage.screen_id: (context) => SignUpPage(),
        Dashboard.screen_id: (context) => Dashboard(),
        SelectTransaction.screen_id: (context) => SelectTransaction(),
        Records.screen_id: (context) => Records(),
        Wallet.screen_id: (context) => Wallet(),
      },
    );
  }
}
