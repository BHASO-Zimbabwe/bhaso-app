import 'package:flutter/material.dart';

import '../add_name.dart';
import '../howOftenDaily.dart';

class ChooseSpecificDays extends StatefulWidget {
  const ChooseSpecificDays({Key? key}) : super(key: key);

  @override
  State<ChooseSpecificDays> createState() => _ChooseSpecificDaysState();
}

class _ChooseSpecificDaysState extends State<ChooseSpecificDays> {

  final List<String> listOfDays =[
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];

  late int clickedIndex  = 0;
  @override
  void initState() {
    super.initState();
    clickedIndex=  0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,50,10,40,),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: Navigator.of(context).pop,
                      icon: Icon(Icons. arrow_back_ios_sharp, size: 17,)),
                  Text("Choose specific days", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                  SizedBox(width: 30,)
                ],
              ),
              SizedBox(height: 15,),

              Text("on which day(s) do you take the med? ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),

              // SizedBox(height: 25,),
              //options tile
              Column(
                children: [
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: listOfDays.length,

                      itemBuilder: ( BuildContext context, int index){
                        return Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Container(
                            color: clickedIndex ==  index ? Color(0xFF3D943A): null,
                            child:  ListTile(
                                title: Text(listOfDays[index]) ,
                                onTap: (){
                                  setState(() {
                                    clickedIndex = index;
                                  });
                                }


                            ),
                          ),
                        );
                      }

                  ),
                ],
              ),
              SizedBox(height: 115 ,),



              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF33691E),
                  minimumSize: const Size(380, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HowOftenDaily()));
                },

                child: const Text(
                  "Next", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold, fontSize: 15),
                ),
              )



            ],
          ),
        ),
      ),

    );
  }
}
