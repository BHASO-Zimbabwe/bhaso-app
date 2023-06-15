import 'package:bhaso/AuthServices/firebaseAuthMethods.dart';
import 'package:bhaso/features/menu/profile/pages/profile_settings.dart';
import 'package:bhaso/features/menu/report/pages/report/reportIssue.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../screens/homePage.dart';
import '../utils/fontsAndColors.dart';

import 'notification/pages/notification.dart';

class Menu_Page extends StatefulWidget {
  const Menu_Page({Key? key}) : super(key: key);

  @override
  State<Menu_Page> createState() => _Menu_PageState();
}


class _Menu_PageState extends State<Menu_Page> {
  // final User? user = FirebaseAuth.instance.currentUser;
  //
  //
  // Future<void> signOut() async{
  //   await context.read<FirebaseAuthMethods>().signOut(context);
  // }
  // int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // centerTitle: true,
      //   // title: const Text(
      //   //   'Bhaso',
      //   // ),
      //   backgroundColor: BhasoColors.primary,
      // ),


      body: DashboardPage()
    );
  }
}
