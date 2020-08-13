import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/transaction_list.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String date = "21 Feb";
  String totalMoney1 = "6791";
  String totalMoney2 = ".90";
  String lastWeekComp = "+25% ";
  String dropdownValue = "Day";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(18.3, 0, 18.3, 0),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.25),
                      blurRadius:
                          15.0, // has the effect of softening the shadow
                      spreadRadius:
                          0.5, // has the effect of extending the shadow
                      offset: Offset(
                        0.0, // horizontal, move right 10
                        10.0, // vertical, move down 10
                      ),
                    ),
                  ],
                  color: const Color(0xff1c3a4d),
                  borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.center,
              height: 200,
              child: Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Wallet Balance',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffffffff),
                              ),
                            ),
                            Text(
                              'Today, ' + date,
                              style: GoogleFonts.montserrat(
                                fontSize: 11.33,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffeeeeee).withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: 23.33333396911621,
                          height: 42.66666793823242,
                          child: Text(
                            '\$',
                            style: GoogleFonts.montserrat(
                              fontSize: 24,
                              color: Color(0xffeeeeee).withOpacity(0.75),
                            ),
                          ),
                        ),
                        Text(
                          totalMoney1,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w200,
                            fontSize: 50,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Container(
                          height: 42.66666793823242,
                          child: Text(
                            totalMoney2,
                            style: GoogleFonts.montserrat(
                              fontSize: 24,
                              color: Color(0xffeeeeee).withOpacity(0.75),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(height: 12),
                    Container(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          children: <Widget>[
                            Text(
                              lastWeekComp + ' Comp. last week',
                              style: GoogleFonts.montserrat(
                                fontSize: 12.67,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffeeeeee).withOpacity(0.5),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Text("What would you like to do?"),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  TransactionList(),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Text("Recent Market Evaluation"),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(18.3, 0, 18.3, 0),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.25),
                      blurRadius:
                          15.0, // has the effect of softening the shadow
                      spreadRadius:
                          0.5, // has the effect of extending the shadow
                      offset: Offset(
                        0.0, // horizontal, move right 10
                        10.0, // vertical, move down 10
                      ),
                    ),
                  ],
                  color: const Color(0xff1c3a4d),
                  borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.center,
              height: 305.33,
              child: Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Bitcoin Price',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffffffff),
                              ),
                            ),
                            Text(
                              'Today, ' + date,
                              style: GoogleFonts.montserrat(
                                fontSize: 11.33,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffeeeeee).withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 114,
                          height: 33,
                          decoration: BoxDecoration(
                            color: const Color(0xff0e2737),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                transform:
                                    Matrix4.translationValues(15, 0, 0.0),
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
                                transform:
                                    Matrix4.translationValues(-10, 0, 0.0),
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                    canvasColor: const Color(0xff0e2737),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      items: <String>[
                                        'Day',
                                        'Week',
                                        'Mount',
                                        'Year'
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style:
                                                TextStyle(color: Colors.white),
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
                    Container(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          height: 159,
                        ),
                      ],
                    ),
                    Container(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 33,
                                  width: 33,
                                  child: CircleAvatar(
                                    backgroundColor: const Color(0xff7099B2),
                                    child: Container(
                                      height: 29,
                                      width: 29,
                                      child: CircleAvatar(
                                        backgroundColor:
                                            const Color(0xff1c3a4d),
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
                                      width: 60.33333206176758,
                                      child: Text(
                                        'Expn.',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffeeeeee),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 83,
                                      child: Text(
                                        '+23% Cmpr.',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 10.67,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffeeeeee)
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.center,
                              color: const Color(0xff0d2839),
                              width: 2,
                              height: 40,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 33,
                                  width: 33,
                                  child: CircleAvatar(
                                    backgroundColor: const Color(0xff7099B2),
                                    child: Container(
                                      height: 29,
                                      width: 29,
                                      child: CircleAvatar(
                                        backgroundColor:
                                            const Color(0xff1c3a4d),
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
                                      width: 60.33333206176758,
                                      child: Text(
                                        'Earn.',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffeeeeee),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 83,
                                      child: Text(
                                        '+63% Cmpr.',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 10.67,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffeeeeee)
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 40,
          ),
        ],
      ),
    );
  }
}
