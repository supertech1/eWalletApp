import 'package:flutter/material.dart';
import '../screens/profile.dart';

class AppDrawerTop extends StatelessWidget {
  const AppDrawerTop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
        Navigator.of(context).pushNamed(Profile.screen_id);
      },
      child: Container(
        padding: EdgeInsets.only(top: 30),
        alignment: AlignmentDirectional.center,
        color: Theme.of(context).primaryColor,
        height: 150,
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(
              "assets/images/person-placeholder.jpg",
            ),
          ),
          title: Text(
            "Oluwatosin Idowu",
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "view profile",
            style: TextStyle(
                color: Colors.white60, decoration: TextDecoration.underline),
          ),
        ),
      ),
    );
  }
}
