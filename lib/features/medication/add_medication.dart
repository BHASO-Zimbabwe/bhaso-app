import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home_page.dart';
import 'med_detail.dart';

class AddMedication extends StatelessWidget {
  const AddMedication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
              child: Text("Currently taking", style: TextStyle(fontWeight: FontWeight.w600),),
            ),
            SingleChildScrollView(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, index)=>
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Med_Detail()));
                          },
                            child: MedCard()),
                      )
              ),

            ),
          ],
        ),
      ),
    );
  }
}
