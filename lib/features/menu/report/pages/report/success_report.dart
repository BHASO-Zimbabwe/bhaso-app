import 'package:bhaso/features/menu/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Success_Page extends StatelessWidget {
  const Success_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back_ios,size: 20,)),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/images/tick.svg'),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text('Successful!',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 10, 8, 20),
                                child: Text('Your report was successfully submitted, our representative would get in-touch shortly. Thank you',textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),
                              ),
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
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Menu_Page()));
                                    },

                                    child: const Text(
                                      "Home", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500, fontSize: 19),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
              SizedBox(height: 50,)



            ],
          ),
        ),
      ),
    );
  }
}
