import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateDivider extends StatelessWidget {
  const CreateDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 141,
          height: 1,
          color: const Color(0xff23475d),
        ),
        Container(
          width: 29,
          child: Text(
            'OR',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 10.66,
              fontWeight: FontWeight.w600,
              color: Color(0xff23475d),
            ),
          ),
        ),
        Container(
          width: 141,
          height: 1,
          color: const Color(0xff23475d),
        ),
      ],
    );
  }
}
