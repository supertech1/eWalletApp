import 'package:flutter/material.dart';
import '../widgets/buy_btc_container.dart';
import '../widgets/sell_btc_container.dart';

List<String> data = ["Buy", "Sell"];

class BuySellBtc extends StatefulWidget {
  static const screen_id = "/buysellbtc";

  @override
  _BuySellBtcState createState() => _BuySellBtcState();
}

class _BuySellBtcState extends State<BuySellBtc> {
  bool buySelected = true;
  bool sellSelected = false;
  int initialTabIndex = 0;

  setSelectionState(int index) {
    if (index == 0) {
      buySelected = true;
      sellSelected = false;
    }
    if (index == 1) {
      buySelected = false;
      sellSelected = true;
    }
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Map<String, String> act =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    if (act["action"] == "buy") {
      buySelected = true;
      sellSelected = false;
      initialTabIndex = 0;
    } else {
      buySelected = false;
      sellSelected = true;
      initialTabIndex = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: initialTabIndex,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.close, color: const Color(0xff7099b2)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text(
                buySelected ? "BUY BTC" : "SELL BTC",
              ),
            ),
          ),
          bottom: TabBar(
            isScrollable: false,
            onTap: (index) {
              setSelectionState(index);
            },
            indicatorColor: Colors.white,
            indicatorWeight: 0.01,
            labelColor: Theme.of(context).primaryColor,
            labelPadding: EdgeInsets.all(0),
            tabs: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: buySelected
                      ? Colors.white
                      : Colors.white70.withOpacity(0.7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Tab(text: "Buy"),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: buySelected
                      ? Colors.white70.withOpacity(0.7)
                      : Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Tab(text: "Sell"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            BuyBtcContainer(),
            SellBtcContainer(),
          ],
        ),
      ),
    );
  }
}
