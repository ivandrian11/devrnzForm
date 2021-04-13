import 'package:devrnz_form/common/config.dart';
import 'package:devrnz_form/common/size_config.dart';
import 'package:devrnz_form/ui/login_page.dart';
import 'package:devrnz_form/ui/register_page.dart';
import 'package:devrnz_form/widgets/button_container.dart';
import 'package:devrnz_form/widgets/title_text.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static String routeName = 'welcome';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Widget _loginContainer = InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(LoginPage.routeName);
      },
      child: ButtonContainer(
        title: 'Login',
        titleColor: Color(0xffF78E2E),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: buttonShadowGradient,
        ),
      ),
    );

    Widget _registerContainer = InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(RegisterPage.routeName);
      },
      child: ButtonContainer(
        title: 'Register Now',
        titleColor: Colors.white,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.transparent,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
    );

    Widget _touchlabel = Column(
      children: [
        Text(
          'Quick login with Touch ID',
          style: TextStyle(
            color: Colors.white,
            fontSize: (SizeConfig.safeBlockHorizontal * 5).roundToDouble(),
          ),
        ),
        SizedBox(
          height: (SizeConfig.safeBlockVertical * 3.9).roundToDouble(),
        ),
        Icon(
          Icons.fingerprint,
          size: (SizeConfig.safeBlockVertical * 14.63).roundToDouble(),
          color: Colors.white,
        ),
        SizedBox(
          height: (SizeConfig.safeBlockVertical * 1.95).roundToDouble(),
        ),
        Text(
          'Use Touch ID',
          style: TextStyle(
            color: Colors.white,
            fontSize: (SizeConfig.safeBlockHorizontal * 4.4).roundToDouble(),
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal:
                (SizeConfig.safeBlockHorizontal * 6.67).roundToDouble()),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleText(Colors.white),
                SizedBox(
                  height: (SizeConfig.safeBlockVertical * 7.8).roundToDouble(),
                ),
                _loginContainer,
                SizedBox(
                  height: (SizeConfig.safeBlockVertical * 3.25).roundToDouble(),
                ),
                _registerContainer,
                SizedBox(
                  height: (SizeConfig.safeBlockVertical * 6.83).roundToDouble(),
                ),
                _touchlabel
              ],
            ),
          ),
        ),
      ),
    );
  }
}
