import 'package:bhaso/features/menu/profile/pages/profile_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/fontsAndColors_constants.dart';
import 'notification/pages/notification.dart';

class Menu_Page extends StatefulWidget {
  const Menu_Page({Key? key}) : super(key: key);

  @override
  State<Menu_Page> createState() => _Menu_PageState();
}

class _Menu_PageState extends State<Menu_Page> {

  int selected = 0;

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
              const SizedBox(
                height: 100,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: (selected == 0) ? Colors.white: BhasoColors.secondary
                ),
                child: ListTile(
                  leading:  Icon(
                    Icons.home,
                    color: (selected == 0)?BhasoColors.primary: Colors.white,
                  ),
                  title:  Text('Home',style: TextStyle(fontWeight:FontWeight.w600,color: (selected == 0) ? BhasoColors.primary: Colors.white),),
                  onTap: () {
                    setState(() {
                      selected = 0;
                    });
                    Navigator.pop(context);

                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: (selected == 1) ? Colors.white: BhasoColors.secondary
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.library_books_outlined,
                    color: (selected == 1)?BhasoColors.primary: Colors.white,
                  ),
                  title:  Text('Health Tips',style: TextStyle(color: (selected == 1) ? BhasoColors.primary: Colors.white)),
                  onTap: () {
                    setState(() {
                      selected = 1;
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: (selected == 2) ? Colors.white: BhasoColors.secondary
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.notifications_none,color: (selected == 2)?BhasoColors.primary: Colors.white,
                  ),
                  title:  Text('Notifications',style: TextStyle(color: (selected == 2) ? BhasoColors.primary: Colors.white)),
                  onTap: () {
                    setState(() {
                      selected = 2;
                    });
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationPage()));
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: (selected == 3) ? Colors.white: BhasoColors.secondary
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.library_books_outlined,
                    color: (selected == 3)?BhasoColors.primary: Colors.white,
                  ),
                  title:  Text('Appointments',style: TextStyle(color: (selected == 3) ? BhasoColors.primary: Colors.white)),
                  onTap: () {
                    setState(() {
                      selected = 3;
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: (selected == 4) ? Colors.white: BhasoColors.secondary
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.report_gmailerrorred,
                    color: (selected == 4)?BhasoColors.primary: Colors.white,
                  ),
                  title:  Text('Report',style: TextStyle(color: (selected == 4) ? BhasoColors.primary: Colors.white)),
                  onTap: () {
                    setState(() {
                      selected = 4;
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: (selected == 5) ? Colors.white: BhasoColors.secondary
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.account_circle_outlined,
                    color:(selected == 5)?BhasoColors.primary: Colors.white,
                  ),
                  title:  Text('Profile',style: TextStyle(color: (selected == 5) ? BhasoColors.primary: Colors.white)),
                  onTap: () {
                    setState(() {
                      selected = 5;
                    });
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileSettings()));

                  },
                ),
              ),
            ],
               ),
                Column(
                  children: [
                    const Divider(
                      color: Colors.white,
                      indent: 15,
                      endIndent: 15,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                      ),
                      title: const Text('Settings',style: TextStyle(color: Colors.white),),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(
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
          children: const [
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
