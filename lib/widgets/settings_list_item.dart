import 'package:flutter/material.dart';

class SettingsListItem extends StatelessWidget {
  final title;
  IconData icon;
  Function tap;
  SettingsListItem({this.title, this.icon, this.tap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(icon, color: Theme.of(context).primaryColor),
            title: Text(
              title,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            color: Colors.grey,
            height: 1,
          ),
        ],
      ),
    );
  }
}
