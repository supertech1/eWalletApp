import 'package:flutter/material.dart';
import '../widgets/from_to_container.dart';

class SendBtcContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Recipient's BTC Address"),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
              alignment: AlignmentDirectional.center,
              margin: EdgeInsets.only(right: 15),
              height: 50,
              child: Text("Input the recipients btc address here"),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.9)),
                    alignment: AlignmentDirectional.center,
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.camera),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Scan QR",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.9)),
                    alignment: AlignmentDirectional.center,
                    margin: EdgeInsets.only(right: 15),
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.content_paste),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Paste Address",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Amount of BTC to send"),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
              alignment: AlignmentDirectional.center,
              margin: EdgeInsets.only(right: 15),
              height: 50,
              child: Text("Input amount in BTC"),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text("Or"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
              alignment: AlignmentDirectional.center,
              margin: EdgeInsets.only(right: 15),
              height: 50,
              child: Text("Input amount in dollars"),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Description"),
            Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
              alignment: AlignmentDirectional.center,
              margin: EdgeInsets.only(right: 15),
              height: 50,
              child: Text("Enter description"),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(right: 15),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: RaisedButton(
                child: Text(
                  "Proceed",
                  style: TextStyle(color: Colors.white),
                ),
                color: Theme.of(context).primaryColor,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
