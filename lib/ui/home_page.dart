import 'package:devrnz_form/common/config.dart';
import 'package:devrnz_form/common/size_config.dart';
import 'package:devrnz_form/provider/bmi_provider.dart';
import 'package:devrnz_form/ui/login_page.dart';
import 'package:devrnz_form/widgets/button_container.dart';
import 'package:devrnz_form/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math' show pow;

class HomePage extends StatelessWidget {
  static String routeName = "home";
  @override
  Widget build(BuildContext context) {
    final _bmiProvider = Provider.of<BMIProvider>(context);

    Widget _appBar = AppBar(
      title: Text(
        'BMI Calculator',
        style: TextStyle(color: Colors.black),
      ),
    );

    Widget _genderPicker = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: TextStyle(
            fontSize: (SizeConfig.safeBlockHorizontal * 4.4).roundToDouble(),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: (SizeConfig.safeBlockVertical * 1.3).roundToDouble(),
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => _bmiProvider.isMale = true,
                child: Container(
                  height: (SizeConfig.safeBlockVertical * 24.4).roundToDouble(),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow:
                        _bmiProvider.isMale ? buttonShadowBlack : buttonShadow,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/icon_male.png',
                        height:
                            (SizeConfig.safeBlockVertical * 13).roundToDouble(),
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                          fontSize: (SizeConfig.safeBlockHorizontal * 5)
                              .roundToDouble(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: (SizeConfig.safeBlockHorizontal * 4.17).roundToDouble(),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => _bmiProvider.isMale = false,
                child: Container(
                  height: (SizeConfig.safeBlockVertical * 24.4).roundToDouble(),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow:
                        _bmiProvider.isMale ? buttonShadow : buttonShadowBlack,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/icon_female.png',
                        height:
                            (SizeConfig.safeBlockVertical * 13).roundToDouble(),
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                          fontSize: (SizeConfig.safeBlockHorizontal * 5)
                              .roundToDouble(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );

    Widget _weightPicker = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Weight',
          style: TextStyle(
              fontSize: (SizeConfig.safeBlockHorizontal * 4.4).roundToDouble(),
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: (SizeConfig.safeBlockVertical * 1.3).roundToDouble(),
        ),
        Container(
          height: (SizeConfig.safeBlockVertical * 9.76).roundToDouble(),
          decoration: BoxDecoration(
            boxShadow: buttonShadow,
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundButton(
                icon: Icons.remove,
                onPressed: () => _bmiProvider.weight--,
              ),
              Text(
                '${_bmiProvider.weight} kg',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              RoundButton(
                icon: Icons.add,
                onPressed: () => _bmiProvider.weight++,
              ),
            ],
          ),
        ),
      ],
    );

    Widget _heightPicker = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Height',
          style: TextStyle(
              fontSize: (SizeConfig.safeBlockHorizontal * 4.4).roundToDouble(),
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: (SizeConfig.safeBlockVertical * 1.3).roundToDouble(),
        ),
        Container(
          height: (SizeConfig.safeBlockVertical * 9.76).roundToDouble(),
          decoration: BoxDecoration(
            boxShadow: buttonShadow,
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundButton(
                icon: Icons.remove,
                onPressed: () => _bmiProvider.height--,
              ),
              Text(
                '${_bmiProvider.height} cm',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              RoundButton(
                icon: Icons.add,
                onPressed: () => _bmiProvider.height++,
              ),
            ],
          ),
        ),
      ],
    );

    Widget _resultText = Expanded(
      child: Center(
        child: Text(
          'Result: ${(_bmiProvider.weight / pow(_bmiProvider.height / 100, 2)).toStringAsFixed(2)}',
          style: TextStyle(
            fontSize: (SizeConfig.safeBlockHorizontal * 8.89).roundToDouble(),
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );

    Widget _logOutButton = GestureDetector(
      onTap: () =>
          Navigator.of(context).pushReplacementNamed(LoginPage.routeName),
      child: ButtonContainer(
        title: 'Log Out',
        titleColor: Colors.white,
        decoration: formDecoration.copyWith(boxShadow: buttonShadow),
      ),
    );

    return Scaffold(
      appBar: _appBar,
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: (SizeConfig.safeBlockHorizontal * 5.56).roundToDouble(),
          vertical: (SizeConfig.safeBlockVertical * 1.6).roundToDouble(),
        ),
        child: Column(
          children: [
            _genderPicker,
            SizedBox(
              height: (SizeConfig.safeBlockVertical * 1.6).roundToDouble(),
            ),
            _weightPicker,
            SizedBox(
              height: (SizeConfig.safeBlockVertical * 1.6).roundToDouble(),
            ),
            _heightPicker,
            _resultText,
            _logOutButton
          ],
        ),
      ),
    );
  }
}
