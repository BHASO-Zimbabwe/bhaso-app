

import 'package:bhaso/features/add_medication/add_name.dart';
import 'package:bhaso/features/add_medication/xhours.dart';
import 'package:bhaso/models/medication.dart';
import 'package:flutter/material.dart';

class HowOftenDaily extends StatefulWidget {
   HowOftenDaily({Key? key}) : super(key: key);

  @override
  State<HowOftenDaily> createState() => _HowOftenDailyState();

}

class _HowOftenDailyState extends State<HowOftenDaily> {
   final Medication med = Medication();
  moveNext()=>Navigator.pushNamed(context, "/xhours");


  final List<String> listOfOftens =[
    "One a day",
    "Twice a day",
    "3 times a day",
    "More than thrice a day",
    "Every X hours"
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
        padding: const EdgeInsets.fromLTRB(10,50,20,40),
        child: Container(
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  IconButton(onPressed: Navigator.of(context).pop,
                      icon: Icon(Icons.arrow_back_ios_new_outlined,size: 15,) ),


                  Text("How often do you take it",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                    ),
                  SizedBox(width: 30,)


                ],
              ),

              // SizedBox(height: 27,),

//options tile
              Column(
                children: [
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: listOfOftens.length,

                      itemBuilder: ( BuildContext context, int index){
                        return Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Container(
                            color: clickedIndex ==  index ? Color(0xFF3D943A): null,
                            child:  ListTile(
                                title: Text(listOfOftens[index]) ,
                                onTap: (){
                                  setState(() {
                                    clickedIndex = index;
                                     if (index == 0){
                                       med.often = 1;
                                     }
                                     else if (index == 1){
                                       med.often = 2;
                                     }
                                     else if (index == 2){
                                       med.often = 3;
                                     }
                                     else if(index == 3){
                                       med.often! >= 4  ;
                                     }
                                     else if(index == 4){
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=>EveryXHours()));

                                     }
                                  });
                                }


                            ),
                          ),
                        );
                      }

                  ),
                ],
              ),
              const SizedBox(height: 315 ,),



              LargeButton(title: "Next", move: moveNext)

            ],
          ),






        ),
      ),

    );
  }
}
