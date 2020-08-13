import 'package:flutter/material.dart';
import '../screens/bank_account.dart';
import '../screens/profile.dart';
import '../screens/security.dart';
import '../widgets/settings_list_item.dart';

class Settings extends StatelessWidget {
  static const screen_id = "/settings";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SettingsListItem(
              title: "Profile",
              icon: Icons.person,
              tap: () {
                Navigator.of(context).pushNamed(Profile.screen_id);
              }),
          SettingsListItem(
              title: "Bank Account",
              icon: Icons.account_balance,
              tap: () {
                Navigator.of(context).pushNamed(BankAccount.screen_id);
              }),
          SettingsListItem(
              title: "Security",
              icon: Icons.security,
              tap: () {
                Navigator.of(context).pushNamed(Security.screen_id);
              }),
        ],
      ),
    );
  }
}
