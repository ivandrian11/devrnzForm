import 'package:devrnz_form/common/config.dart';
import 'package:devrnz_form/common/size_config.dart';
import 'package:devrnz_form/ui/login_page.dart';
import 'package:devrnz_form/widgets/button_container.dart';
import 'package:devrnz_form/widgets/entry_field.dart';
import 'package:devrnz_form/widgets/header_forms.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  static String routeName = 'regis';
  @override
  Widget build(BuildContext context) {
    Widget _allTextField = Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (SizeConfig.safeBlockHorizontal * 6.67).roundToDouble(),
      ),
      child: Column(
        children: [
          EntryField('Username'),
          EntryField('Email id'),
          EntryField('Password', isPassword: true),
          ButtonContainer(
            title: 'Register Now',
            titleColor: Colors.white,
            decoration: formDecoration,
          ),
        ],
      ),
    );

    Widget _accountInstruction = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account ?  ',
          style: TextStyle(
            fontSize: (SizeConfig.safeBlockHorizontal * 4.17).roundToDouble(),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(LoginPage.routeName);
          },
          child: Text(
            'Login',
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
            ],
          ),
        ),
      ),
    );
  }
}
