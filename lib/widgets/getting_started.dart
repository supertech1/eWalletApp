import 'dart:async';
import "package:flutter/material.dart";
import '../models/slide.dart';
import 'slide_item.dart';
import 'slide_dots.dart';

class GettingStarted extends StatefulWidget {
  static const screen_id = "gettingstarted";

  @override
  _GettingStartedState createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 5), (timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage,
          duration: Duration(microseconds: 300), curve: Curves.easeIn);
    });
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              onPageChanged: _onPageChanged,
              controller: _pageController,
              itemCount: Slide.slideList.length,
              itemBuilder: (ctx, i) => SlideItem(i),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (int i = 0; i < Slide.slideList.length; i++)
                  if (i == _currentPage) SlideDots(true) else SlideDots(false)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
