import 'package:devrnz_form/common/size_config.dart';
import 'package:flutter/material.dart';

class HorizontalLineText extends StatelessWidget {
  final String text;

  HorizontalLineText(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              right: (SizeConfig.safeBlockHorizontal * 2.78).roundToDouble(),
              left: (SizeConfig.safeBlockHorizontal * 8.3).roundToDouble(),
            ),
            child: Divider(color: Colors.black),
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: (SizeConfig.safeBlockHorizontal * 4.4).roundToDouble(),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              left: (SizeConfig.safeBlockHorizontal * 2.78).roundToDouble(),
              right: (SizeConfig.safeBlockHorizontal * 8.3).roundToDouble(),
            ),
            child: Divider(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
