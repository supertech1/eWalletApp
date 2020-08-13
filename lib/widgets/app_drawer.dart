import 'package:flutter/material.dart';
import './app_drawer_top.dart';
import './app_drawer_item.dart';
import './app_drawer_divider.dart';

import '../screens/bank_account.dart';
import '../screens/about.dart';
import '../screens/security.dart';
import '../screens/dashboard.dart';
import '../screens/faq.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(right: 60),
      child: Column(
        children: <Widget>[
          AppDrawerTop(),
          AppDrawerItem(
            imageUrl: "assets/images/dashboard.svg",
            title: "Dashboard",
            tap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed(Dashboard.screen_id);
            },
          ),
          AppDrawerItem(
              imageUrl: "assets/images/bank.svg",
              title: "Bank Accounts",
              tap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(BankAccount.screen_id);
              }),
          AppDrawerDivider(),
          AppDrawerItem(
            imageUrl: "assets/images/settings.svg",
            title: "Security",
            tap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(Security.screen_id);
            },
          ),
          AppDrawerItem(
            imageUrl: "assets/images/faq.svg",
            title: "FAQ & Help",
            tap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(FAQ.screen_id);
            },
          ),
          AppDrawerItem(
            imageUrl: "assets/images/about.svg",
            title: "About",
            tap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(About.screen_id);
            },
          ),
          AppDrawerDivider(),
          AppDrawerItem(
            imageUrl: "assets/images/logout.svg",
            title: "Logout",
            tap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
