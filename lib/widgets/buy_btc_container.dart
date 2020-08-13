import 'package:flutter/material.dart';
import '../widgets/from_to_container.dart';

class BuyBtcContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FromToContainer(
              from: "Naira Wallet",
              to: "BTC Wallet",
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
              alignment: AlignmentDirectional.center,
              margin: EdgeInsets.only(right: 15),
              height: 50,
              child: Text("Current Rate : NGN471 / \$"),
            ),
            SizedBox(
              height: 20,
            ),
            Text("How much BTC do you want to buy?"),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
              alignment: AlignmentDirectional.center,
              margin: EdgeInsets.only(right: 15),
              height: 50,
              child: Text("Input amount in naira"),
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
            Text("You will Recieve :"),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration:
                        BoxDecoration(color: Colors.grey.withOpacity(0.2)),
                    alignment: AlignmentDirectional.center,
                    height: 50,
                    child: Text("0.001"),
                  ),
                ),
                Container(
                  width: 50,
                  decoration: BoxDecoration(color: Colors.grey),
                  alignment: AlignmentDirectional.center,
                  margin: EdgeInsets.only(right: 15),
                  height: 50,
                  child: Text(
                    "BTC",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
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
