import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './play_ui/play_ui.dart';

abstract class WalletUiTheme {}

abstract class ThemeMixin {
  ThemeData getTheme(BuildContext context) {
    final primaryIconColor = HexColor('#000000');
    final iconColor = HexColor('#7099b2');
    final accentIconColor = HexColor('#24485e');
    final secundaryColor = HexColor('#84939d');
    final backgroudColor = HexColor('#ffffff');
    final primaryColor = HexColor('#1c3a4d');
    final accentColor = HexColor('#e09100');

    // final primaryIconColor = HexColor('#FFFFFF');
    // final iconColor = HexColor('#7099b2');
    // final accentIconColor = HexColor('#24485e');
    // final secundaryColor = HexColor('#84939d');
    // final backgroudColor = HexColor('#112A39');
    // final primaryColor = HexColor('#315FD6');
    // final accentColor = HexColor('#F5A623');

    return ThemeData(
      textTheme: GoogleFonts.montserratTextTheme(
        TextTheme(
          bodyText1: TextStyle(
            color: primaryIconColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          bodyText2: TextStyle(
            color: secundaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          subtitle1: TextStyle(
            color: primaryIconColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          subtitle2: TextStyle(
            color: secundaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          button: TextStyle(
            color: primaryIconColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      iconTheme: IconThemeData(
        color: iconColor,
      ),
      primaryIconTheme: IconThemeData(
        color: primaryIconColor,
      ),
      accentIconTheme: IconThemeData(
        color: accentIconColor,
      ),
      backgroundColor: backgroudColor,
      primaryColor: primaryColor,
      accentColor: accentColor,
      secondaryHeaderColor: HexColor('#1c3a4d'),
    );
  }
}
