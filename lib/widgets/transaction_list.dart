import 'package:flutter/material.dart';
import './transaction_list_item.dart';

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
          ),
          SizedBox(
            width: 10,
          ),
          TransactionListItem(title: "Sell Bitcoin"),
          SizedBox(
            width: 10,
          ),
          TransactionListItem(title: "Receive Bitcoin"),
          SizedBox(
            width: 10,
          ),
          TransactionListItem(title: "Send Bitcoin"),
          SizedBox(
            width: 10,
          ),
          TransactionListItem(title: "Withdraw"),
        ],
      ),
    );
  }
}
