

import 'package:flutter/material.dart';

class HowOftenDaily extends StatefulWidget {
   HowOftenDaily({Key? key}) : super(key: key);

  @override
  State<HowOftenDaily> createState() => _HowOftenDailyState();

}

class _HowOftenDailyState extends State<HowOftenDaily> {
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
                      icon: Icon(Icons.arrow_back_ios_new_outlined) ),


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
                                  });
                                }


                            ),
                          ),
                        );
                      }

                  ),
                ],
              ),
              SizedBox(height: 315 ,),


             Padding(
               padding: const EdgeInsets.only(left:8.0),
               child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF33691E),
                      minimumSize: const Size(350, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    onPressed: (){},

                    child: const Text(
                      "Next", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
             ),

            ],
          ),






        ),
      ),

    );
  }
}
