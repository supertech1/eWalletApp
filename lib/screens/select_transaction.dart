import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectTransaction extends StatefulWidget {
  static const screen_id = "/select_transaction";
  @override
  _SelectTransactionState createState() => _SelectTransactionState();
}

class _SelectTransactionState extends State<SelectTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff112a39),
      //Appbar hidden because we dont use them so if you want delete them.
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.close, color: const Color(0xff7099b2)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        title: Text(
          'Add funds',
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xffeeeeee),
          ),
        ),
        centerTitle: true,
      ),
      body: //scaffold's body
          SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 15.7,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(27.9, 0, 27.9, 0),
                child: Text(
                  'It’s always good to have more money on you.',
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    color: Color(0xffeeeeee),
                  ),
                ),
              ),
              Container(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(27.9, 0, 0, 0),
                    child: Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 120),
                        width: 33.33,
                        height: 5.33,
                        color: const Color(0xffeeeeee)),
                  ),
                  Container(),
                ],
              ),
              Container(
                height: 21,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 25, 15, 0),
                child: GestureDetector(
                  onTap: () {
                    // Modular.to.pushNamed("wallet/send-request");
                  },
                  child: Container(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    child: CircleAvatar(
                                      backgroundColor: const Color(0xfff5a623),
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 14,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Add funds",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 14.67,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffeeeeee),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Increase more to your wealth",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 10.67,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff888888),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Container(
                            height: 14,
                          ),
                          Container(
                              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: Container(
                                height: 1,
                                color: const Color(0xff23475d),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 25, 15, 0),
                child: GestureDetector(
                  onTap: () {
                    // Modular.to.pushReplacementNamed("wallet/send-request");
                  },
                  child: Container(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    child: CircleAvatar(
                                      backgroundColor: const Color(0xff315fd6),
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.attach_money,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 14,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Request",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 14.67,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffeeeeee),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Withdraw money to your account",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 10.67,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff888888),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Container(
                            height: 14,
                          ),
                          Container(
                              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: Container(
                                height: 1,
                                color: const Color(0xff23475d),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 25, 15, 0),
                child: GestureDetector(
                  onTap: () {
                    print("Link a New Account Pressed");
                  },
                  child: Container(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    child: CircleAvatar(
                                      backgroundColor: const Color(0xff7ed321),
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.credit_card,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 14,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Exchange",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 14.67,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffeeeeee),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Convert your btc to naira ",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 10.67,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff888888),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Container(
                            height: 14,
                          ),
                          Container(
                              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: Container(
                                height: 1,
                                color: const Color(0xff23475d),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 25, 15, 0),
                child: GestureDetector(
                  onTap: () {
                    print("Add an account Pressed");
                  },
                  child: Container(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: CircleAvatar(
                                  backgroundColor: const Color(0xffe9486d),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.person_add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 14,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      "Add an account",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 14.67,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffeeeeee),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Supply a new bank account",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 10.67,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff888888),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 14,
                          ),
                          Container(
                              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: Container(
                                height: 1,
                                color: const Color(0xff23475d),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
