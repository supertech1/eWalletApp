import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReceiveBtcContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              "QR Code",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Scan for receiving bTC in your wallet"),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 150,
              height: 150,
              child: SvgPicture.asset("assets/images/qr-code.svg"),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Wallet Address"),
            SizedBox(
              height: 10,
            ),
            Text(
              "34LMnksjgak668kkkl77jjlk",
              style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.content_copy),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Copy BTC Address",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
