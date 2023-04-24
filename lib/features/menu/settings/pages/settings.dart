import 'package:bhaso/features/menu/appearance/pages/appearance.dart';
import 'package:bhaso/features/menu/notification/pages/notification.dart';
import 'package:bhaso/features/menu/profile/pages/profile_settings.dart';
import 'package:flutter/material.dart';

import '../../../helpCenter/helpCenter.dart';
import '../../../privacyPolicy/privacyPolicy.dart';
import '../../../termsAndConditions/tAndC.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 12,right: 6,top: 50),

        children: [
          Row(
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              },
                icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),

               SizedBox(width: 89,),

               Title(color: Colors.black, child: const Text("Settings",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),)),


            ],
          ),

          SizedBox(height:65 ),
          //options
          ListTile(
            title: const Text("Profile",

              style: TextStyle(
                  fontSize: 21

              ),),
            //to appointmments page
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> ProfileSettings())
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
          Divider(),
          //caregivers
          ListTile(
            title: const Text("Notification",
              style: TextStyle(
                  fontSize: 21

              ),),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const NotificationPage())
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
          Divider(),


          //medications

          ListTile(
            title: const Text("Appearance",
              style: TextStyle(
                  fontSize: 21

              ),),

            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> AppearancePage())
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
          Divider(),
          //profile settings
          SizedBox(height: 45),

          ListTile(
            title: const Text("Terms and Conditions",
              style: TextStyle(
                  fontSize: 21

              ),),

            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const TermsAndConditions() )
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
          Divider(),
          //report issues
          ListTile(
            title: const Text("Privacy policy",
              style: TextStyle(
                  fontSize: 21


              ),),

            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const PrivacyPolicy())
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
          Divider(),

          ListTile(
            title: const Text("Help Center",
              style: TextStyle(
                  fontSize: 21


              ),),

            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const HelpCenter())
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
          const SizedBox(height: 60,),


          Row(

            children: const [
              IconButton(onPressed: null,
                  icon: Icon(Icons.logout_outlined,size: 27,color: Colors.red,)),

              Text("Logout",
                style: TextStyle(
                    fontSize: 21

                ),)

            ],
          )


        ],
      ),

    );
  }
}
