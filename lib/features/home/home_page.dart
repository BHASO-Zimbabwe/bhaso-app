
import 'package:bhaso/features/add_medication/add_name.dart';
import 'package:bhaso/features/utils/fontsAndColors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../AuthServices/firebaseAuthMethods.dart';
import 'package:provider/provider.dart';

import '../menu/notification/pages/notification.dart';
import '../menu/profile/pages/profile_settings.dart';
import '../menu/report/pages/report/reportIssue.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final User? user = FirebaseAuth.instance.currentUser;

  Future<void> signOut() async{
    await context.read<FirebaseAuthMethods>().signOut(context);
  }

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // backgroundColor: BhasoColors.primary,
      body:
      SafeArea(
        child:   SingleChildScrollView(
          child: Column(
          children: [
             MorningPills(title:"Morning Pills"),
            MorningPills(title:"Afternoon Pills"),
            MorningPills(title:"Evening Pills"),
             // AfternoonPills(),
             // EveningPills()
          ],
      ),
        ),



      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Stack(
          children: [

          AppBar(
            backgroundColor: BhasoColors.primary,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
          ),
            Positioned(
                top: 50,
                right: 30,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/headshot.jpg"),
                )),

            Positioned(
              top: 90,
              child:  Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 30, 10),
              child: Text("Today", style: TextStyle(color: Colors.white),),
            ),),
            Positioned(
              top:120,
                child:

                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 5, 5),
                    height : 100,
                    width: MediaQuery.of(context).size.width,

                    child: Column(
                      children: [
                        Expanded(child:


                               ListView.builder(
                                  shrinkWrap: true,


                                  itemCount: 7,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext context, index)=>
                               Container(

                                 margin: EdgeInsets.only(right: 12),
                                 padding: EdgeInsets.all(10),
                                 height: 100,
                                 width: 60,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(25),
                                   color: Colors.white,

                                 ),
                                 child: Column(
                                   children: [
                                     Text("Sat"),
                                     Text("16")
                                    ],
                                ),

                              )
                              ),
                            ),
                      ],
                    ),
                  ),
              )],


              ),
            ),
      floatingActionButton: FloatingActionButton(
        heroTag: "btn1",
          child: Icon(Icons.add),
        backgroundColor: BhasoColors.primary,
        onPressed: () { Navigator.push(context, MaterialPageRoute(builder:
            (context)=>AddName())); },),


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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReportIssues()));

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
                    onTap: ()=>signOut()
                ),
              ],
            )
          ],
        ),

      ),

    );
  }
}

class MorningPills extends StatelessWidget {
  final String title;

  MorningPills({ required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.4,

      child: Column(
        mainAxisSize: MainAxisSize.min,

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("$title"),
          ),

          Expanded(child:


                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, index)=>
                    MedCard()
                ),
                ),
              ],
            ));


  }

}

class MedCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
   return Container(
     padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
     height: 100,
     width: MediaQuery.of(context).size.width * 0.7,
     child: Card(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                 child: FaIcon(FontAwesomeIcons.pills, color: Colors.green,),
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: Text("Paracentamol"),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: Text("Take 2"),
                   )
                 ],
               ),
             ],
           ),

           Icon(Icons.more_vert,size: 40,)
         ],
       ),
       
     ),
   );
  }
  
}
