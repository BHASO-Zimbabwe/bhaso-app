import 'package:bhaso/features/add_medication/add_name.dart';
import 'package:bhaso/features/utils/fontsAndColors.dart';
import 'package:flutter/material.dart';

import '../../../models/medication.dart';
import 'package:bhaso/providers/add_med_provider.dart';

import 'Xdays.dart';
import 'chooseSpecificDays.dart';


class FreqEveryday extends StatefulWidget {
  const FreqEveryday({Key? key}) : super(key: key);

  @override
  State<FreqEveryday> createState() => _FreqEverydayState();

}

class _FreqEverydayState extends State<FreqEveryday> {
  final Medication med=Medication();

  moveNext()=>Navigator.pushNamed(context, '/often');

  final List<String> options = [
    "Everyday",
    "Every other day",
    "Choose specific days",
    "Every X days",
    // "Every X weeks",
    // "Every X months"
  ];

  late int tappedIndex;
  @override
  void initState() {
    super.initState();
    tappedIndex=  0;
  }






  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,50,10,30),
        child: Container(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    IconButton(onPressed: Navigator.of(context).pop,
                        icon: const Icon(Icons.arrow_back_ios_new_outlined,size: 15,) ),


                    const Text("Frequency",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 30,)



                  ],
                ),

              ),
              //options listtile
              Column(
                children: [
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,

                      itemCount: options.length,
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          color: tappedIndex == index ? Color(0xFF3D943A): null,
                          child: ListTile(


                            title: Center(child: Text(options[index])),
                            onTap: (){
                              setState(() {
                                tappedIndex = index;

                                //put an if statement for the value of each option to happen
                                //state management with provider

                                if (index== 0){
                                  med.frequency = 1;

                                }
                                else if (index== 1){
                                  med.frequency = 2;
                                }
                                else if (index ==2){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseSpecificDays()));
                                }
                                else if (index== 3) {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>XDays()));

                                }


                              });

                            },
                          ),
                        );
                        // const Divider(
                        //   color: Colors.grey,
                        //   indent: 7,
                        //   endIndent: 7,
                        // )




                      }
                  ),
                ],
              ),
              SizedBox(height: 280,),





              //button
              // ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: const Color(0xFF33691E),
              //       minimumSize: const Size(350, 60),
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(13),
              //       ),
              //     ),
              //     onPressed: moveNext,
              //
              //     child: const Text(
              //       "Next", style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold, fontSize: 15),
              //     ),
              //   ),
              LargeButton(title: "Next", move: moveNext)

            ],
          )



        ),
      ),
    );
  }
}
