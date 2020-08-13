import 'package:flutter/material.dart';

class Deposit extends StatelessWidget {
  static const screen_id = "/deposit";
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
                          "Deposit Funds",
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
                padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Text("Account Number"),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Below is your Account Details"),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        color: Colors.grey.withOpacity(0.1),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Account Name :  "),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Idowu Oluwatosin Julius"),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Account Number :"),
                            SizedBox(
                              height: 5,
                            ),
                            Text("8902898370"),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Bank Name : "),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Rubies Microfinance bank")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                              "Copy Account Details",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          "NB : You can use your account number normally as you do with other bank account number.")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
