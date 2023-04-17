
import 'package:bhaso/screens/splashScreen.dart';
import 'package:bhaso/features/onboarding/onboard.dart';
import 'package:bhaso/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
// import 'package:onboarding/onboarding.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final TextTheme textTheme = TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic, fontFamily: 'Poppins'),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bhaso-app',
      theme: ThemeData(
      textTheme: textTheme,
      fontFamily: 'Poppins',
      primaryColor: Colors.green
      ),
      home: SplashScreen(),
    );
  }
}

