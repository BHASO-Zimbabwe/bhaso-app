import 'dart:async';

import 'package:bhaso/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

import 'onboardingOne.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context)=>   OnboardingScreen()
            )
        )
    );

}


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF2E7D32),
      body:   Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  const [
          SizedBox(height: 39,),

          Center(child: Image(image: AssetImage("assets/images/bhasoLogo.png"),
          height: 100,
          width: 250,)
          )




        ],
      ),

    );
  }
}

