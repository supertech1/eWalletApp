import 'package:flutter/material.dart';
import '../widgets/receive_btc_container.dart';
import '../widgets/send_btc_container.dart';

class SendeReceive extends StatefulWidget {
  static const screen_id = "/sendreceivebtc";

  @override
  _SendeReceiveState createState() => _SendeReceiveState();
}

class _SendeReceiveState extends State<SendeReceive> {
  bool receiveSelected = false;
  bool sendSelected = true;
  int initialTabIndex = 0;

  setSelectionState(int index) {
    if (index == 0) {
      sendSelected = true;
      receiveSelected = false;
    }
    if (index == 1) {
      sendSelected = false;
      receiveSelected = true;
    }
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Map<String, String> act =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    if (act["action"] == "receive") {
      receiveSelected = true;
      sendSelected = false;
      initialTabIndex = 1;
    } else {
      receiveSelected = false;
      sendSelected = true;
      initialTabIndex = 0;
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
              child: Text(sendSelected ? "Send BTC" : "Receive BTC"),
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
                  color: sendSelected
                      ? Colors.white
                      : Colors.white70.withOpacity(0.7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Tab(text: "Send"),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: sendSelected
                      ? Colors.white70.withOpacity(0.7)
                      : Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Tab(text: "Receive"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SendBtcContainer(),
            ReceiveBtcContainer(),
          ],
        ),
      ),
    );
  }
}
