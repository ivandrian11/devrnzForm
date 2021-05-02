import 'package:devrnz_form/provider/bmi_provider.dart';
import 'package:devrnz_form/ui/home_page.dart';
import 'package:devrnz_form/ui/login_page.dart';
import 'package:devrnz_form/ui/register_page.dart';
import 'package:devrnz_form/ui/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return ChangeNotifierProvider<BMIProvider>(
      create: (context) => BMIProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'devrnz\'s Form',
        initialRoute: WelcomePage.routeName,
        routes: {
          WelcomePage.routeName: (context) => WelcomePage(),
          RegisterPage.routeName: (context) => RegisterPage(),
          LoginPage.routeName: (context) => LoginPage(),
          HomePage.routeName: (context) => HomePage(),
        },
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
          ),
        ),
      ),
    );
  }
}
