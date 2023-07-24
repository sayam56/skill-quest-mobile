import 'package:Skill_Quest/controller/route_controller.dart';
import 'package:Skill_Quest/view/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

bool? enrolled;
List<int> enrolledCourseIndex = [];

class MyApp extends StatelessWidget {
  Widget firstWidget = SignUpPage();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Skill Quest',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        canvasColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: PageRoutes.getAuthPage(),
      getPages: PageRoutes.routes,
      // home: AuthPage(),
    );
  }
}
