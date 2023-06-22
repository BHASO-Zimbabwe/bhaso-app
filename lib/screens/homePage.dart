import 'package:bhaso/features/home/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../features/medication/add_medication.dart';
import '../features/menu/profile/pages/profile_settings.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return


      Scaffold(
          body: IndexedStack(
            children: [
              HomePage(),
              AddMedication(),
              ProfileSettings()
            ],
            index: _currentIndex,
          ),

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() => _currentIndex = index);
            },
            items:  const [
              BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.house,
                    color: Colors.black,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.rectangleList,
                    color: Colors.black,
                  ),
                  label: "Medication"),


              BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.user,
                    color: Colors.black,
                  ),
                  label: "Profile")
            ],
          ));
  }
}
