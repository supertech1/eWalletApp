import 'package:flutter/material.dart';

class FromToContainer extends StatelessWidget {
  final from, to;
  const FromToContainer({this.from, this.to});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("From"),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
                alignment: AlignmentDirectional.center,
                margin: EdgeInsets.only(right: 15),
                height: 50,
                child: Text(from),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("To"),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
                alignment: AlignmentDirectional.center,
                margin: EdgeInsets.only(right: 15),
                height: 50,
                child: Text(to),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
