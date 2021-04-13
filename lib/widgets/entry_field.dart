import 'package:devrnz_form/common/size_config.dart';
import 'package:flutter/material.dart';

class EntryField extends StatelessWidget {
  final String title;
  final bool isPassword;

  EntryField(this.title, {this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: (SizeConfig.safeBlockHorizontal * 4.4).roundToDouble(),
          ),
        ),
        SizedBox(
          height: (SizeConfig.safeBlockVertical * 1.6).roundToDouble(),
        ),
        TextField(
          obscureText: isPassword,
          style: TextStyle(color: Color(0xff474848)),
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Color(0xffF3F3F4),
            filled: true,
          ),
        ),
        SizedBox(
          height: (SizeConfig.safeBlockVertical * 2.4).roundToDouble(),
        ),
      ],
    );
  }
}
