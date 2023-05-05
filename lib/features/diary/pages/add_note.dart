import 'package:bhaso/features/diary/pages/diary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/fontsAndColors.dart';

class DairyAddPage extends StatelessWidget {
  const DairyAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon:  Icon(Icons.arrow_back_ios, color: Colors.white,))
                 ,
                  Text('Add note',style: TextStyle(fontSize: 16, color: Colors.white),),

                  Icon(Icons.file_upload_outlined, color: Colors.white,),
                ],
              )
            ],
          ),

        ),

      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Friday 16 January 2023 at 22:22', style: TextStyle(fontSize: 16),),
              ),
              Container(
                padding: EdgeInsets.all(20),

                height: MediaQuery.of(context).size.height * 0.65,
                decoration: BoxDecoration(
                  color: Color(0x8BD7D7D7),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Write notes here',

                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
