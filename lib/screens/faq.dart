import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  static const screen_id = "/faq";
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
                          "FAQ & Help",
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
              child: SingleChildScrollView(
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        FaqItemContainer(heading: "Popular Questions"),
                        FaqItemContainer(heading: "Main Topics")
                      ],
                    ),
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

class FaqItemContainer extends StatelessWidget {
  final heading;
  const FaqItemContainer({this.heading});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            color: Colors.grey.withOpacity(0.1),
            padding: EdgeInsets.only(top: 30, bottom: 20, left: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                FaqItem(),
                FaqItem(),
                FaqItem(),
                FaqItem(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            alignment: AlignmentDirectional.centerStart,
            height: 50,
            width: 180,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              "$heading",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class FaqItem extends StatelessWidget {
  const FaqItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            ExpansionTile(
              title: Text("This is a question title"),
              trailing: Icon(Icons.keyboard_arrow_down),
              children: <Widget>[Text("This is the answer to the question")],
            ),
          ],
        ));
  }
}
