import 'package:devrnz_form/common/size_config.dart';
import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  final BoxDecoration decoration;
  final String title;
  final Color titleColor;

  ButtonContainer({
    @required this.decoration,
    @required this.title,
    @required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: (SizeConfig.safeBlockVertical * 8.1).roundToDouble(),
      alignment: Alignment.center,
      decoration: decoration,
      child: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: (SizeConfig.safeBlockHorizontal * 5).roundToDouble(),
        ),
      ),
    );
  }
}
