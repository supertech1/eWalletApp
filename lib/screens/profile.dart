import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  static const screen_id = "/profile_id";
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
              alignment: AlignmentDirectional.center,
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
                        child: Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text(
                            "Profile",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    backgroundImage:
                        AssetImage("assets/images/person-placeholder.jpg"),
                  ),
                  Text(
                    "Oluwatosin Idowu",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Level 1: \$500 daily limit",
                    style: TextStyle(fontSize: 12),
                  ),
                  RaisedButton(
                    child: Text("Edit Profile"),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
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
                      Text("Your Details"),
                      Form(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextFormField(
                                    decoration:
                                        InputDecoration(labelText: "Firstname"),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    decoration:
                                        InputDecoration(labelText: "Lastname"),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextFormField(
                                    decoration:
                                        InputDecoration(labelText: "Username"),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: "Phone Number"),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration:
                                  InputDecoration(labelText: "Email Address"),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: "Referral Link"),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(Icons.content_copy),
                                  onPressed: () {},
                                )
                              ],
                            ),
                            SizedBox(
                              height: 300,
                            )
                          ],
                        ),
                      ),
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
