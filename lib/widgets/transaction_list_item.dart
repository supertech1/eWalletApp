import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionListItem extends StatelessWidget {
  final title;
  final Function tap;

  TransactionListItem({this.title, this.tap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xff000000).withOpacity(0.25),
                blurRadius: 15.0, // has the effect of softening the shadow
                spreadRadius: 0.5, // has the effect of extending the shadow
                offset: Offset(
                  0.0, // horizontal, move right 10
                  10.0, // vertical, move down 10
                ),
              ),
            ],
            color: const Color(0xff1c3a4d),
            borderRadius: BorderRadius.circular(15)),
        width: 163.33,
        height: 101.33,
        child: Container(
          padding: EdgeInsets.fromLTRB(25, 18.7, 25, 0),
          child: Column(
            children: <Widget>[
              Container(
                child: CircleAvatar(
                  backgroundColor: const Color(0xff2a4f67),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '\$',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xfff5a623),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 7.7,
              ),
              Container(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffeeeeee),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
