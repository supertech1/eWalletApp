import 'package:flutter/material.dart';
import './screens/authentication_types.dart';
import './screens/login_page.dart';
import './screens/signup_page.dart';
import './screens/dashboard.dart';
import './screens/select_transaction.dart';
import './screens/records.dart';
import './screens/wallets.dart';
import './screens/settings.dart';
import './screens/bank_account.dart';
import './screens/profile.dart';
import './screens/security.dart';
import './screens/about.dart';
import './screens/faq.dart';
import './screens/buy_sell_btc.dart';
import './screens/send_receive_btc.dart';
import './screens/deposit.dart';

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
        Settings.screen_id: (context) => Settings(),
        BankAccount.screen_id: (context) => BankAccount(),
        Profile.screen_id: (context) => Profile(),
        Security.screen_id: (context) => Security(),
        About.screen_id: (context) => About(),
        FAQ.screen_id: (context) => FAQ(),
        BuySellBtc.screen_id: (context) => BuySellBtc(),
        SendeReceive.screen_id: (context) => SendeReceive(),
        Deposit.screen_id: (context) => Deposit(),
      },
    );
  }
}
