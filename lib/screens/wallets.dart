import 'package:flutter/material.dart';
import '../widgets/wallet_item.dart';

class Wallet extends StatefulWidget {
  static const screen_id = "/wallet";
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          WalletItem(
            walletLogo: "naira",
            walletType: "Naira Wallet",
            walletAmount: "98, 750.40",
            trailingHead: "current rate",
            trailingBody: "N460 / \$",
          ),
          SizedBox(
            height: 20,
          ),
          WalletItem(
            walletLogo: "bitcoin",
            walletType: "Bitcoin Wallet",
            walletAmount: "0.002",
            trailingHead: "BTC/USD",
            trailingBody: "\$11450.46",
          ),
          SizedBox(
            height: 20,
          ),
          WalletItem(
            walletLogo: "dollar",
            walletType: "Total Balance",
            walletAmount: "1000",
            trailingHead: "Naaira",
            trailingBody: "N460,000",
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
