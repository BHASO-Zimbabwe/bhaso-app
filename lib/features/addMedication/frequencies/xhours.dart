import 'package:bhaso/features/utils/fontsAndColors.dart';
import 'package:flutter/material.dart';

class EveryXHours extends StatefulWidget {
  const EveryXHours({Key? key}) : super(key: key);

  @override
  State<EveryXHours> createState() => _EveryXHoursState();
}

class _EveryXHoursState extends State<EveryXHours> {
  late int clickedIndex = 0;

  @override
  void initState(){
    super.initState();
    clickedIndex = 0;
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,50,10,40),
        child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){},
                        icon: Icon(Icons. arrow_back_ios_sharp, size: 15,)),
                    Text("Choose hour frequency", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                    SizedBox(width: 30,)
                  ],
                ),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 85,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder:
                              (BuildContext context, index)=> GestureDetector(
                                onTap: (){
                                  setState(() {
                                    clickedIndex= index;
                                  });

                                },

                                child: Hours(index: index, clickedIndex: clickedIndex,),
                          )
                      )
                      )
                    ],

                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF33691E),
                    minimumSize: const Size(350, 60),
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



              ],
            ),





          ),
      )

    );
  }
}
class Hours extends StatelessWidget {
  final int index;

  final int clickedIndex;
  final List<String> every= [
    "Every",
    "Every ",
    "Every",
    "Every ",
    "Every ",
    "Every ",
    "Every ",
    "Every ",
    "Every ",
    "Every ",

  ];
  final List<String> numberOf= [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",

  ];
  final List<String> hours= [
    "hour",
    "hours",
    "hours",
    "hours",
    "hours",
    "hours",
    "hours",
    "hours",
    "hours",
    "hours",

  ];
  Hours({
    Key ? key,
    required this.index, required this.clickedIndex,

    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 70,
      child: Card(
        color: (clickedIndex == index) ? BhasoColors.secondary : Colors.white,
        child: Column(
          children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(4, 5, 4,0 ),
          child: SizedBox(
            child: Text("${every[index]}"),
            // height: 30,
          ),

        ),
            Text("${numberOf[index]}"),

      Text("${hours[index]}"),






          ],

        ),
      )

    );
  }
}

