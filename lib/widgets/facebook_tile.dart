import 'package:devrnz_form/common/config.dart';
import 'package:devrnz_form/common/size_config.dart';
import 'package:flutter/material.dart';

class FacebookTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (SizeConfig.safeBlockVertical * 8.1).roundToDouble(),
      decoration: BoxDecoration(boxShadow: buttonShadow),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xff1159A9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
              ),
              child: Text(
                'f',
                style: TextStyle(
                  fontSize: (SizeConfig.safeBlockHorizontal * 7.78).roundToDouble(),
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xff2773BA),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: Text(
                'Login with Facebook',
                style: TextStyle(
                  fontSize: (SizeConfig.safeBlockHorizontal * 5).roundToDouble(),
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
