import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/app_drawer.dart';
import 'select_transaction.dart';

import './dashboardpage.dart';
import '../screens/records.dart';
import '../screens/wallets.dart';

class Dashboard extends StatefulWidget {
  static const screen_id = "/dashboard";
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double notificationOpacity = 1;
  bool notification = false;

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
  int selectedTab = 0;
  int tabcount = 5;
  Color button0 = const Color(0xffe3a33d);
  Color button1 = const Color(0xff386785);
  Color button2 = Colors.white;
  Color button3 = const Color(0xff386785);
  Color button4 = const Color(0xff386785);

  List<Map<String, dynamic>> pages = [
    {"title": "Dashboard", "page": DashboardPage()},
    {"title": "Wallets", "page": Wallet()},
    {"title": "Records", "page": Records()},
    {"title": "Record", "page": DashboardPage()},
  ];

  void changepage() {
    if (selectedTab == 0) {
      setState(() {
        button0 = const Color(0xffe3a33d);
        button1 = const Color(0xff386785);
        button2 = Colors.white;
        button3 = const Color(0xff386785);
        button4 = const Color(0xff386785);
      });
      print("0");
    }
    if (selectedTab == 1) {
      setState(() {
        button0 = const Color(0xff386785);
        button1 = const Color(0xffe3a33d);
        button2 = Colors.white;
        button3 = const Color(0xff386785);
        button4 = const Color(0xff386785);
      });
      print("1");
    }
    if (selectedTab == 2) {
      setState(() {
        button0 = const Color(0xff386785);
        button1 = const Color(0xff386785);
        button2 = const Color(0xffe3a33d);
        button3 = const Color(0xff386785);
        button4 = const Color(0xff386785);
      });
      print("2");
    }
    if (selectedTab == 3) {
      setState(() {
        button0 = const Color(0xff386785);
        button1 = const Color(0xff386785);
        button2 = Colors.white;
        button3 = const Color(0xffe3a33d);
        button4 = const Color(0xff386785);
      });
      print("3");
    }
    if (selectedTab == 4) {
      setState(() {
        button0 = const Color(0xff386785);
        button1 = const Color(0xff386785);
        button2 = Colors.white;
        button3 = const Color(0xff386785);
        button4 = const Color(0xffe3a33d);
      });
      print("4");
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Column(
              children: <Widget>[
                Container(
                  transform: Matrix4.translationValues(10, 19, 0.0),
                  height: 5,
                  width: 5,
                  child: CircleAvatar(
                    backgroundColor:
                        Colors.red.withOpacity(notificationOpacity),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.notifications,
                      color: Theme.of(context).primaryColor),
                  color: const Color(0xff7099b2),
                  onPressed: () {
                    print("Notifications Button Pressed");
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          pages[selectedTab]["title"],
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).primaryColor,
          ),
        ),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: pages[selectedTab]["page"], //scaffold's body

      bottomNavigationBar: Container(
        // color: const Color(0xff1b394c),
        child: SafeArea(
          child: Container(
            height: 66.5,
            decoration: BoxDecoration(
              color: const Color(0xff1b394c),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.25),
                  blurRadius: 15.0, // has the effect of softening the shadow
                  spreadRadius: 0.5, // has the effect of extending the shadow
                  offset: Offset(
                    0.0, // horizontal, move right 10
                    -20.0, // vertical, move down 10
                  ),
                ),
              ],
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      selectedTab = 0;
                      changepage();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 20,
                          child: SvgPicture.asset(
                            "assets/images/dashboard.svg",
                            color: button0,
                          ),
                        ),
                        Text(
                          "Dashboard",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selectedTab = 1;
                      changepage();
                      // Modular.to.pushReplacementNamed("/wallet/shopping-list");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 20,
                          child: SvgPicture.asset(
                            "assets/images/Wallet.svg",
                            color: button1,
                          ),
                        ),
                        Text(
                          "Wallets",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(SelectTransaction.screen_id);
                    },
                    child: Container(
                      width: 48.0,
                      height: 48.0,
                      decoration: new BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff000000).withOpacity(0.5),
                            blurRadius:
                                15.0, // has the effect of softening the shadow
                            spreadRadius:
                                0.5, // has the effect of extending the shadow
                            offset: Offset(
                              0.0, // horizontal, move right 10
                              0.0, // vertical, move down 10
                            ),
                          ),
                        ],
                        shape: BoxShape.circle,
                        color: const Color(0xff315fd6),
                      ),
                      child: Icon(Icons.add, color: button2),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selectedTab = 2;
                      changepage();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 20,
                          child: SvgPicture.asset(
                            "assets/images/Horizontal_view.svg",
                            color: button2,
                          ),
                        ),
                        Text(
                          "History",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selectedTab = 3;
                      changepage();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 20,
                          child: SvgPicture.asset(
                            "assets/images/profile.svg",
                            color: button3,
                          ),
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
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
