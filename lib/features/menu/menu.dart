import 'package:bhaso/features/utils/colors_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu_Page extends StatelessWidget {
  const Menu_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Bhaso',
        ),
        backgroundColor: BhasoColors.primary,
      ),
      drawer: Drawer(
        backgroundColor: BhasoColors.secondary,
        child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 20, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color:BhasoColors.primary,
                  ),
                  title: const Text('Home',style: TextStyle(fontWeight:FontWeight.w600,color: BhasoColors.primary),),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.library_books_outlined,
                  color: Colors.white,
                ),
                title: const Text('Health Tips',style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications_none,color: Colors.white,
                ),
                title: const Text('Notifications',style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.library_books_outlined,
                  color: Colors.white,
                ),
                title: const Text('Appointments',style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.report_gmailerrorred,
                  color: Colors.white,
                ),
                title: const Text('Report',style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                ),
                title: const Text('Profile',style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
               ),
                Column(
                  children: [
                    Divider(
                      color: Colors.white,
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                      ),
                      title: const Text('Settings',style: TextStyle(color: Colors.white),),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      title: const Text('Logout',style: TextStyle(color: Colors.white)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )
          ],
        ),

        ),

      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );;
  }
}
