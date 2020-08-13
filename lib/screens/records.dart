import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../play_ui/hex_color/hex_color.dart';

class Records extends StatefulWidget {
  static const screen_id = "/records";
  @override
  _RecordsState createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  List<int> money = [23, 544, 765, 76, 54, 65, 34, 6745, 234, 564];
  List from = [
    "Paypal",
    "Amazon",
    "CheapEverything",
    "Aliexpress",
    "Toyota",
    "USP",
    "Amazon",
    "Credit",
    "CheapEverything",
    "Paypal"
  ];

  Widget build(BuildContext context) {
    return Page1();
  }
}

List<int> transactionsAmount = [
  23,
  544,
  765,
  76,
  54,
  65,
  34,
  6745,
  234,
  564,
  500,
  200
];
List transactionsType = [
  "Recieve Bitcoin",
  "Send Bitcoin",
  "Buy Bitcoin",
  "Sell Bitcoin",
  "Withdraw Naira",
  "Deposit Naira",
  "Receive Bitcoin",
  "Send Bitcoin",
  "Buy Bitcoin",
  "Sell Bitcoin",
  "Withdraw Naira",
  "Deposit Naira",
];

List transactionsStatus = [
  "Pending",
  "Completed",
  "Pending",
  "Pending",
  "Completed",
  "Pending",
  "Completed",
  "Pending",
  "Completed",
  "Pending",
  "Completed",
  "Pending"
];

List transactionsDate = [
  "21 Feb, 2020",
  "31 Jan, 2019",
  "21 Feb, 2020",
  "31 Jan, 2019",
  "21 Feb, 2020",
  "31 Jan, 2019",
  "21 Feb, 2020",
  "31 Jan, 2019",
  "21 Feb, 2020",
  "31 Jan, 2019",
  "21 Feb, 2020",
  "31 Jan, 2019",
];

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String dropdownValue = "filter";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Transaction History",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                Container(
                  width: 140,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        transform: Matrix4.translationValues(15, 0, 0.0),
                        child: Text(
                          dropdownValue,
                          style: GoogleFonts.montserrat(
                            fontSize: 12.67,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(-10, 0, 0.0),
                        child: Theme(
                          data: Theme.of(context).copyWith(
                            canvasColor: const Color(0xff0e2737),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              items: <String>[
                                'Buy',
                                'Sell',
                                'Deposits',
                                'Withdrawals',
                                "Received",
                                "Sent"
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String newValue) {
                                setState(() {
                                  print(newValue);
                                  dropdownValue = newValue;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(bottom: 50),
              scrollDirection: Axis.vertical,
              reverse: false,
              itemBuilder: (_, int index) => TransactionRecordItem(
                transactionName: transactionsType[index],
                transactionStatus: transactionsStatus[index],
                transactionAmount: transactionsAmount[index],
                transactionDate: transactionsDate[index],
              ),
              itemCount: transactionsType.length,
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionRecordItem extends StatelessWidget {
  final transactionName, transactionStatus, transactionAmount, transactionDate;
  dynamic transactionColor;
  String transactionSign;

  static String determineColor(String transactionName) {
    String colorCode = "";
    switch (transactionName) {
      case "Recieve Bitcoin":
        colorCode = "#00bc64";
        break;
      case "Send Bitcoin":
        colorCode = "#d1004c";
        break;
      case "Buy Bitcoin":
        colorCode = "#0171b7";
        break;
      case "Sell Bitcoin":
        colorCode = "#ff4992";
        break;
      case "Deposit Naira":
        colorCode = "#5d00a0";
        break;
      case "Withdraw Naira":
        colorCode = "#007991";
        break;
      default:
        colorCode = "#384791";
        break;
    }
    return colorCode;
  }

  static String determineTransactionSign(String transactionName) {
    String transactionSign = "";
    switch (transactionName) {
      case "Recieve Bitcoin":
      case "Deposit Naira":
      case "Buy Bitcoin":
        transactionSign = "+";
        break;
      case "Send Bitcoin":
      case "Sell Bitcoin":
      case "Withdraw Naira":
        transactionSign = "-";
        break;
      default:
        transactionSign = "*";
        break;
    }
    return transactionSign;
  }

  TransactionRecordItem(
      {this.transactionName,
      this.transactionStatus,
      this.transactionAmount,
      this.transactionDate}) {
    transactionColor = determineColor(transactionName);
    transactionSign = determineTransactionSign(transactionName);
  }
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {},
      child: GestureDetector(
        onTap: () {
          // Modular.to.pushNamed('wallet/open-item');
        },
        child: Card(
          elevation: 0,
          color: Colors.transparent,
          child: Container(
            width: 136,
            height: 80,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 25, 15, 0),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: 4,
                        height: 35,
                        color: HexColor(transactionColor),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: CircleAvatar(
                                      backgroundColor: const Color(0xff2a4f67),
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '\$',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xfff5a623),
                                          ),
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
                                          transactionName,
                                          style: GoogleFonts.montserrat(
                                              fontSize: 14.67,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          transactionStatus,
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
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "$transactionSign\$" +
                                  this.transactionAmount.toString(),
                              textAlign: TextAlign.end,
                              style: GoogleFonts.montserrat(
                                fontSize: 14.67,
                                fontWeight: FontWeight.w600,
                                color: HexColor(transactionColor),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              this.transactionDate,
                              textAlign: TextAlign.end,
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
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
