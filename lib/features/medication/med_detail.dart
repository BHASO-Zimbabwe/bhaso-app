import 'package:bhaso/features/utils/fontsAndColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'edit_medication.dart';

class Med_Detail extends StatelessWidget {
  const Med_Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: MediaQuery.of(context).size.height * 0.38,
                  decoration: BoxDecoration(
            color: BhasoColors.secondary,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)
                  ),
                ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: IconButton(icon:
                            Icon(Icons.arrow_back_ios_new, size: 16,),
                                color: Colors.white,
                                onPressed: () {
                                   Navigator.pop(context);
                            }),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Med_Edit()));
                            },
                              child:Text("Edit", style: TextStyle(fontSize: 14, color: Colors.white),) ,

                            )

                          ),
                        ],
                      ),
                      Center(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundColor: Colors.white,
                              child: Icon(FontAwesomeIcons.pills,size: 40,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Pill Name" ,style: TextStyle(color: Colors.white),),
                            )
                          ],
                        ) ,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Last Taken",style: TextStyle(color: Colors.white)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Next Reminder",style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("16 feb, 08:00am",style: TextStyle(color: Colors.white)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("15 feb, 08:00am",style: TextStyle(color: Colors.white)),
                          )
                        ],
                      )

                    ],
                  ),


                ),
      Expanded(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child:  Column(
         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
              Text("Reminders"),
              Text("Everyday"),
              SizedBox(height: 30,),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, index)=>
                        Text("09:00 (Take 1 Pill)")
                ),
              ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Refill Reminder: When i have 5 pills left"),
                          ),
                          Divider(),
            ],
          ),
        ),
      )],
            ),

      )),
    );
  }
}
