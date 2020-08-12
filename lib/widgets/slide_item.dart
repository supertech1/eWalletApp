import 'package:flutter/material.dart';
import '../models/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(Slide.slideList[index].imageUrl),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            Slide.slideList[index].title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              Slide.slideList[index].description,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
