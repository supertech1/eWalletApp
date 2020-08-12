import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletItem extends StatelessWidget {
  final walletType, walletAmount, walletLogo, trailingHead, trailingBody;
  WalletItem(
      {this.walletType,
      this.walletAmount,
      this.walletLogo,
      this.trailingHead,
      this.trailingBody});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(0xff0b202d),
          child: SvgPicture.asset(
            "assets/images/$walletLogo.svg",
            color: Theme.of(context).accentColor,
            height: 20,
            width: 20,
          ),
        ),
        title: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            height: 60,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "$walletType",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  Text(
                    "$walletAmount",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )
                ])),
        trailing: Container(
          width: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 2,
                color: Colors.grey,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "$trailingHead",
                    style: TextStyle(fontSize: 8),
                  ),
                  Text(
                    "$trailingBody",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
