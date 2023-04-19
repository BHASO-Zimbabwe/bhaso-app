import 'package:flutter/material.dart';

import '../../../utils/colors_constants.dart';



class ProfileSettingsDetails extends StatefulWidget {
  const ProfileSettingsDetails({Key? key}) : super(key: key);

  @override
  State<ProfileSettingsDetails> createState() => _ProfileSettingsDetailsState();
}

class _ProfileSettingsDetailsState extends State<ProfileSettingsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const IconButton(onPressed: null,
                icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),


              Center(
                child: Title(color: Colors.black, child: const Text("Profile",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
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


        ],
      ),
    );
  }
}

