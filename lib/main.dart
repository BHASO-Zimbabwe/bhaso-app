
import 'package:bhaso/AuthServices/firebaseAuthMethods.dart';
import 'package:bhaso/features/add_medication/add_name.dart';
import 'package:bhaso/features/add_medication/add_type.dart';
import 'package:bhaso/features/add_medication/frequency/freqEveryday.dart';
import 'package:bhaso/features/add_medication/pillsStock.dart';
import 'package:bhaso/features/add_medication/setTimeAndDose.dart';
import 'dart:ui';
import 'package:bhaso/features/menu/appearance/pages/appearance.dart';
import 'package:bhaso/features/menu/menu.dart';
import 'package:bhaso/features/menu/notification/pages/notification.dart';
import 'package:bhaso/features/menu/profile/pages/profileSettingsDetails.dart';
import 'package:bhaso/features/menu/profile/pages/profile_settings.dart';
import 'package:bhaso/features/menu/report/pages/report/success_report.dart';
import 'package:bhaso/features/menu/settings/pages/settings.dart';
import 'package:bhaso/providers/add_med_provider.dart';
import 'package:bhaso/screens/homePage.dart';
import 'package:bhaso/screens/loginScreen.dart';
import 'package:bhaso/screens/signUpPage.dart';
import 'package:bhaso/screens/splashScreen.dart';
import 'package:bhaso/features/onboarding/onboard.dart';
import 'package:bhaso/features/onboarding/onboarding_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'features/add_medication/howOftenDaily.dart';
import 'features/add_medication/xhours.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

import 'package:bhaso/features/menu/report/pages/report/reportIssue.dart';

import 'features/diary/pages/add_note.dart';
import 'features/diary/pages/diary.dart';
// import 'package:onboarding/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final TextTheme textTheme = const TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic, fontFamily: 'Poppins'),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirebaseAuthMethods>(create: (_)=> FirebaseAuthMethods(FirebaseAuth.instance)),
        Provider<AddMedProvider>(create: (_)=> AddMedProvider()),
        StreamProvider(create: (context)=> context.read<FirebaseAuthMethods>().authState,

        initialData: null)


      ],


      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bhaso-app',
        theme: ThemeData(
        textTheme: textTheme,
        fontFamily: 'Poppins',
        primaryColor: Colors.green
        ),

        home: AuthWrapper(),
        routes: {
         '/signUp': (context) =>  SignUpPage(),
          "/login": (context) =>  LoginPage(),
          "/add_name":(context) => AddName(),
          "/add_type": (context)=>AddType(),
          "/frequency": (context)=>FreqEveryday(),
          "/often": (context)=>HowOftenDaily(),
          "/xhours": (context)=>EveryXHours(),
          "/timeNdDose": (context)=>SetTimeAndDose(),
          "/pillstock": (context)=>PillStock()

        }
      ),
    );
  }
}

//???

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if(firebaseUser != null ){
      return Menu_Page();
    }
    return LoginPage();

  }
}


