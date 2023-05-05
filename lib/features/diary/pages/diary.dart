import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../utils/fontsAndColors.dart';
import 'add_note.dart';

class Diary_Page extends StatelessWidget {
  const Diary_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: const BoxDecoration(
                color: BhasoColors.primary,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30))

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/images/cross.svg'),
                    Text('Diary',style: TextStyle(fontSize: 16, color: Colors.white),),

                    Icon(Icons.add, color: Colors.white,),
                  ],
                )
              ],
            ),
          ),

        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    SvgPicture.asset("assets/images/diary.svg"),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Take Notes',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Document any health events, symptoms and  anything you want to share with your health worker',
                        textAlign: TextAlign.center,),
                    )
                  ],
                ),
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF33691E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DairyAddPage()));
                    },

                    child: const Text(
                      "Add a note", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
