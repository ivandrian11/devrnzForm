import 'package:devrnz_form/common/size_config.dart';
import 'package:devrnz_form/widgets/title_text.dart';
import 'package:flutter/material.dart';

class HeaderForms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight * 0.35,
      width: SizeConfig.screenWidth,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: EdgeInsets.only(
                  left: (SizeConfig.safeBlockHorizontal * 3.3).roundToDouble(),
                  top: (SizeConfig.safeBlockVertical * 1.95).roundToDouble(),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: (SizeConfig.safeBlockHorizontal * 6.67)
                          .roundToDouble(),
                    ),
                    Text(
                      'Back',
                      style: TextStyle(
                        fontSize: (SizeConfig.safeBlockHorizontal * 4.72)
                            .roundToDouble(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'images/vector.png',
              height: SizeConfig.screenHeight * 0.3,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: TitleText(Color(0xffF89027)),
          )
        ],
      ),
    );
  }
}
