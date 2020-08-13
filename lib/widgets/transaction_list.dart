import 'package:flutter/material.dart';
import './transaction_list_item.dart';

import '../screens/buy_sell_btc.dart';
import '../screens/send_receive_btc.dart';
import '../screens/deposit.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(18.3, 0, 18.3, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TransactionListItem(
            title: "Buy Bitcoin",
            tap: () {
              Navigator.of(context).pushNamed(BuySellBtc.screen_id,
                  arguments: {"action": "buy"});
            },
          ),
          SizedBox(
            width: 10,
          ),
          TransactionListItem(
            title: "Sell Bitcoin",
            tap: () {
              Navigator.of(context).pushNamed(BuySellBtc.screen_id,
                  arguments: {"action": "sell"});
            },
          ),
          SizedBox(
            width: 10,
          ),
          TransactionListItem(
            title: "Receive Bitcoin",
            tap: () {
              Navigator.of(context).pushNamed(SendeReceive.screen_id,
                  arguments: {"action": "receive"});
            },
          ),
          SizedBox(
            width: 10,
          ),
          TransactionListItem(
            title: "Send Bitcoin",
            tap: () {
              Navigator.of(context).pushNamed(SendeReceive.screen_id,
                  arguments: {"action": "send"});
            },
          ),
          SizedBox(
            width: 10,
          ),
          TransactionListItem(
            title: "Deposit",
            tap: () {
              Navigator.of(context).pushNamed(Deposit.screen_id);
            },
          ),
          SizedBox(
            width: 10,
          ),
          TransactionListItem(title: "Withdraw"),
        ],
      ),
    );
  }
}
