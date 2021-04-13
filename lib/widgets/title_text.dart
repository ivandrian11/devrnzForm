import 'package:devrnz_form/common/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  final Color color;

  TitleText(this.color);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'd',
          style: GoogleFonts.portLligatSans(
            color: color,
            fontSize: (SizeConfig.safeBlockHorizontal * 11.67).roundToDouble(),
            fontWeight: FontWeight.w700,
          ),
          children: [
            TextSpan(
              text: 'ev',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(text: 'rnz'),
          ]),
    );
  }
}
