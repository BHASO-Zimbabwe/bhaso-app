import 'package:bhaso/features/utils/fontsAndColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddName extends StatelessWidget {
  const AddName({Key? key}) : super(key: key);
 
  
  
  @override
  Widget build(BuildContext context) {
    moveNext()=>Navigator.pushNamed(context, '/add_type');
    return Scaffold(
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: ()=>Navigator.pop(context),
                      icon: Icon(Icons. arrow_back_ios_sharp, size: 15,)),
                  Text("Add Medicine", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                  SizedBox(width: 30,)
                ],
              ),
              SizedBox(height: 30,),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        border: Border.all(color: BhasoColors.headColor)
                      ),

                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.search),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: TextFormField(
                            decoration:InputDecoration.collapsed(hintText: 'Medication name')

                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.mic))
                        ],
                      ),
                    ),
                    LargeButton(title: "Next", move: moveNext)

                  ],
                ),
              ),

            ],
          ),
      ))
    );
  }
}


class LargeButton extends StatelessWidget{
  late final String title;
  final VoidCallback move;
  LargeButton({required this.title, required this.move , });
  @override
  Widget build(BuildContext context) {
    return
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF33691E),
          minimumSize: const Size(290, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        onPressed: move,

        child:  Text(
          "$title", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, fontSize: 15),
        ),
      );
  }


}