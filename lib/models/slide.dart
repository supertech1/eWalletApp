import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide(
      {@required this.imageUrl,
      @required this.title,
      @required this.description});

  static final slideList = [
    Slide(
        imageUrl: "assets/images/bitcoin.jpg",
        title: "Trade BTC Conveniently",
        description: "Buy and Sell bitcoin with a click of a button "),
    Slide(
        imageUrl: "assets/images/localcurrency.jpg",
        title: "Convert with ease",
        description: "Convert bitcoin to local currency with ease"),
    Slide(
        imageUrl: "assets/images/bitcoin2.jpg",
        title: "Exchange Digital Assets",
        description: "Send and Recieve bitcoin from any wallet"),
  ];
}
