import 'package:bhaso/features/add_medication/add_name.dart';
import 'package:bhaso/features/utils/fontsAndColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Med_Edit extends StatelessWidget {
  const Med_Edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    color: BhasoColors.secondary,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)
                    ),
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Text("Edit",style: TextStyle(color: Colors.white),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextButton(onPressed: () {
                               Navigator.pop(context);
                              },
                                child:Text("Cancel", style: TextStyle(fontSize: 14, color: Colors.white),) ,

                              )

                          ),
                          Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddName()));
                              },
                                child:Text("Update", style: TextStyle(fontSize: 14, color: Colors.white),) ,

                              )

                          ),
                        ],
                      ),




                    ],
                  ),




          ),

                Container(
                  padding: EdgeInsets.all(20),
                  child:
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Reminders"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("08:00 (Take 1), 15:00 (Take 1), 20:00 (Take 1)", style: TextStyle(fontSize: 10),),
                              )
                            ],

                          ),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Instructions"),
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.all(8.0),
                              //   child: Text("08:00 (Take 1), 15:00 (Take 1), 20:00 (Take 1)", style: TextStyle(fontSize: 10),),
                              // )
                            ],

                          ),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Refill Reminder"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Only 2 pills left, please refill", style: TextStyle(fontSize: 10),),
                              )
                            ],

                          ),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      Divider(),
                      SizedBox(height: 50,),
                      TextButton(onPressed: (){}, child: Text("Supend")),
                      Divider(),
                      TextButton(onPressed: (){}, child: Text("Delete",style: TextStyle(color: Colors.red),)),

                    ],
                  ),
                )
              ]),
    )));
  }
}
