import 'package:devrnz_form/common/config.dart';
import 'package:devrnz_form/common/size_config.dart';
import 'package:devrnz_form/ui/register_page.dart';
import 'package:devrnz_form/widgets/button_container.dart';
import 'package:devrnz_form/widgets/entry_field.dart';
import 'package:devrnz_form/widgets/facebook_tile.dart';
import 'package:devrnz_form/widgets/header_forms.dart';
import 'package:devrnz_form/widgets/horizontal_line_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String routeName = 'login';
  @override
  Widget build(BuildContext context) {
    Widget _allTextField = Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (SizeConfig.safeBlockHorizontal * 6.67).roundToDouble(),
      ),
      child: Column(
        children: [
          EntryField('Email id'),
          EntryField('Password', isPassword: true),
          ButtonContainer(
            title: 'Login',
            titleColor: Colors.white,
            decoration: formDecoration.copyWith(boxShadow: buttonShadow),
          ),
          SizedBox(
            height: (SizeConfig.safeBlockVertical * 2.4).roundToDouble(),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot password ?',
              style: TextStyle(
                fontSize:
                    (SizeConfig.safeBlockHorizontal * 4.4).roundToDouble(),
              ),
            ),
          ),
          SizedBox(
            height: (SizeConfig.safeBlockVertical * 2.4).roundToDouble(),
          ),
          HorizontalLineText('or'),
          SizedBox(
            height: (SizeConfig.safeBlockVertical * 2.4).roundToDouble(),
          ),
          FacebookTile(),
        ],
      ),
    );

    Widget _accountInstruction = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account ?  ',
          style: TextStyle(
            fontSize: (SizeConfig.safeBlockHorizontal * 4.17).roundToDouble(),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(RegisterPage.routeName);
          },
          child: Text(
            'Register',
            style: TextStyle(
              fontSize: (SizeConfig.safeBlockHorizontal * 4.17).roundToDouble(),
              fontWeight: FontWeight.w700,
              color: Color(0xffF89F4F),
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderForms(),
              _allTextField,
              SizedBox(
                height: (SizeConfig.safeBlockVertical * 2.92).roundToDouble(),
              ),
              _accountInstruction,
              SizedBox(
                height: (SizeConfig.safeBlockVertical * 2.92).roundToDouble(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
