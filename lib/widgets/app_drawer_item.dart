import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppDrawerItem extends StatelessWidget {
  final imageUrl, title;
  final Function tap;
  AppDrawerItem(
      {@required this.imageUrl, @required this.title, @required this.tap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: ListTile(
        leading: Container(
          width: 60,
          height: 20,
          child: SvgPicture.asset(
            this.imageUrl,
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: Text(
          this.title,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
