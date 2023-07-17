import 'package:Skill_Quest/view/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future main() async {
  await Future.delayed(const Duration(seconds: 1));
  FlutterNativeSplash.remove();

  runApp(MyApp());
}

const MaterialColor kPrimaryColor = MaterialColor(
  0xFFFFEED0,
  <int, Color>{
    50: Color(0xFFFFEED0),
    100: Color(0xFFFFEED0),
    200: Color(0xFFFFEED0),
    300: Color(0xFFFFEED0),
    400: Color(0xFFFFEED0),
    500: Color(0xFFFFEED0),
    600: Color(0xFFFFEED0),
    700: Color(0xFFFFEED0),
    800: Color(0xFFFFEED0),
    900: Color(0xFFFFEED0),
  },
);

class MyApp extends StatelessWidget {
  Widget firstWidget = SignUpPage();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skill Quest',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        canvasColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: SignUpPage(),
    );
  }
}
