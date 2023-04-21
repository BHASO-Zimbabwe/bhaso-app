
import 'package:bhaso/features/menu/profile/pages/profileSettingsDetails.dart';
import 'package:bhaso/features/menu/report/pages/report/reportIssue.dart';
import 'package:flutter/material.dart';


import '../../../utils/fontsAndColors_constants.dart';
import 'appointments.dart';
import 'caregiver.dart';
import 'medications.dart';


class ProfileSettings extends StatelessWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 9,right: 5,top: 50),

        children:  [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               IconButton(onPressed: (){
                 Navigator.pop(context);
               },
                icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),


              Expanded(
                child: Title(color: Colors.black, child: const Text("Profile",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),)),
              ),


            ],
          ),
          const CircleAvatar(
            radius: 60,
            backgroundColor: BhasoColors.textColor,
            child: CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage("assets/images/headshot.jpg"),
            ),
          ),
          const Center(
            child: Text("Khanya Toluwa",
            style: TextStyle(
              fontSize: 25
            ),),
          ),
          const SizedBox(height: 20),

          //the options
          // //to appointments page
          ListTile(
            title: const Text("Appointments",

              style: TextStyle(
                  fontSize: 21

              ),),
            //to appointmments page
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> Appointments())
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
        Divider(),
        //caregivers
          ListTile(
            title: const Text("Caregiver",
              style: TextStyle(
                  fontSize: 21

              ),),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const Caregiver())
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
          Divider(),


          //medications

          ListTile(
            title: const Text("Medications",
              style: TextStyle(
                  fontSize: 21

              ),),

            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const Medications())
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
          Divider(),
          //profile settings

          ListTile(
            title: const Text("Profile Settings",
              style: TextStyle(
                  fontSize: 21

              ),),

            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const ProfileSettingsDetails())
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
          Divider(),
          //report issues
          ListTile(
            title: const Text("Report Issues",
              style: TextStyle(
                  fontSize: 21


              ),),

            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>  ReportIssues())
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
          Divider(),
          const SizedBox(height: 60,),


          Row(

            children: const [
              IconButton(onPressed: null,
                  icon: Icon(Icons.logout_outlined,size: 27,color: Colors.red,)),

              Text("Logout",
              style: TextStyle(
                fontSize: 16

              ),)

            ],
          )


        ],

      ),

    );
  }
}
