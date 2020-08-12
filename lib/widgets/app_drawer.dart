import 'package:flutter/material.dart';
import './app_drawer_top.dart';
import './app_drawer_item.dart';
import './app_drawer_divider.dart';

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
              imageUrl: "assets/images/dashboard.svg", title: "Dashboard"),
          AppDrawerItem(
              imageUrl: "assets/images/Horizontal_view.svg",
              title: "Transactions"),
          AppDrawerItem(
              imageUrl: "assets/images/bank.svg", title: "Bank Accounts"),
          AppDrawerDivider(),
          AppDrawerItem(
              imageUrl: "assets/images/settings.svg", title: "Settings"),
          AppDrawerItem(imageUrl: "assets/images/faq.svg", title: "FAQ & Help"),
          AppDrawerItem(imageUrl: "assets/images/about.svg", title: "About"),
          AppDrawerDivider(),
          AppDrawerItem(imageUrl: "assets/images/logout.svg", title: "Logout"),
        ],
      ),
    );
  }
}
