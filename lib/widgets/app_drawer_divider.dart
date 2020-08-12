import 'package:flutter/material.dart';

class AppDrawerDivider extends StatelessWidget {
  const AppDrawerDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 35, right: 20),
      height: 1,
      color: Colors.grey,
    );
  }
}
