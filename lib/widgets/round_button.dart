import 'package:devrnz_form/common/size_config.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Function onPressed;
  final IconData icon;

  RoundButton({@required this.onPressed, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 5,
      shape: CircleBorder(),
      fillColor: Colors.black,
      child: Icon(
        icon,
        color: Colors.white,
        size: (SizeConfig.safeBlockHorizontal * 6.67).roundToDouble(),
      ),
    );
  }
}
