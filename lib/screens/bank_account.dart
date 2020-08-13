import 'package:flutter/material.dart';
import '../widgets/bank_account_setup.dart';

class BankAccount extends StatelessWidget {
  static const screen_id = "/bank_account";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 30),
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 50),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.close,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Expanded(
                        child: Text(
                          "Account",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Add Bank Account Details"),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (ctx) => BankAccountSetup(),
                            enableDrag: true,
                            isScrollControlled: true);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
