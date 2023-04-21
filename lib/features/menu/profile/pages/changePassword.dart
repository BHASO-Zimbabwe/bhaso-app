import 'package:flutter/material.dart';

import '../../../utils/fontsAndColors_constants.dart';


class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

  bool obscureOldPassword = true;
  bool obscureNewPassword = true;

  bool obscureConfirmPassword = true;

  bool isFirstCheck = false;
  bool isSecondCheck = false;
  bool isThirdCheck = false;
  bool isFourthCheck = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 39, 15, 29),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(

                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: () {
                    Navigator.pop(context);
                  },),
                  const SizedBox(width: 42),


                  const Text("Change Password",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500
                    ),)

                ],
              ),
              SizedBox(height: 45),

              const Align(
                alignment: Alignment.topLeft,
                child: Text("Old Password",
                  style: TextStyle( fontWeight: FontWeight.w400,fontSize: 19),),
              ),


              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(
                    obscureText: obscureOldPassword,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {

                              obscureOldPassword = !obscureOldPassword;
                            });


                          }, icon: obscureOldPassword
                          ?Icon(Icons.visibility_off)
                          : Icon(Icons.visibility)


                      ),

                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(21),

                    )

                ),
              ),
              SizedBox(height: 15,),

              const Align(
                alignment: Alignment.topLeft,
                child: Text("New Password",
                  style: TextStyle( fontWeight: FontWeight.w400,fontSize: 19),),
              ),


              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(
                    obscureText: obscureNewPassword,
                    decoration: InputDecoration(

                      suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {

                              obscureNewPassword = !obscureNewPassword;
                            });


                          }, icon: obscureNewPassword
                          ?Icon(Icons.visibility_off)
                          : Icon(Icons.visibility)


                      ),

                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(21),

                    )

                ),
              ),

              SizedBox(height: 15),

              const Align(
                alignment: Alignment.topLeft,
                child: Text("Confirm New Password",
                  style: TextStyle( fontWeight: FontWeight.w400,fontSize: 19),),
              ),


              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(
                    obscureText: obscureConfirmPassword,
                    decoration: InputDecoration(
                      //password visibility
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {

                          obscureConfirmPassword = !obscureConfirmPassword;
                        });


                      }, icon: obscureConfirmPassword
                          ?Icon(Icons.visibility,)
                          : Icon(Icons.visibility_off)

                      ),

                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(21),

                    )

                ),
              ),

              SizedBox(height: 21),






              //checkbox

              Row(
                children: [
                  Checkbox(value: isFirstCheck,
                      onChanged: (newValue){
                        setState(() {
                          isFirstCheck= newValue!;
                        });
                      }

                  ),

                  const Text("Minimun of 8 characters",
                    style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        fontSize: defaultSpacing * 1.2
                    ),
                  )


                ],
              ),

              Row(
                children: [
                  Checkbox(value: isSecondCheck,
                      onChanged: (newValue){
                        setState(() {
                          isSecondCheck= newValue!;
                        });
                      }

                  ),

                  const Text("Contain special characters",
                    style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        fontSize: defaultSpacing * 1.2
                    ),
                  )


                ],
              ),

              Row(
                children: [
                  Checkbox(value: isThirdCheck,
                      onChanged: (newValue){
                        setState(() {
                          isThirdCheck= newValue!;
                        });
                      }

                  ),

                  const Text("Contain Uppercase",
                    style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        fontSize: defaultSpacing * 1.2
                    ),
                  )


                ],
              ),

              Row(
                children: [
                  Checkbox(value: isFourthCheck,
                      onChanged: (newValue){
                        setState(() {
                          isFourthCheck= newValue!;
                        });
                      }

                  ),

                  const Text("Contain Capital letters and numbers",
                      style: TextStyle(
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          fontSize: defaultSpacing * 1.2
                      )
                  )


                ],
              ),



              SizedBox(height: 15),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF33691E),
                  minimumSize: const Size(350, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                onPressed: (){},

                child: const Text(
                  "Change Password", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold, fontSize: 19),
                ),
              ),







            ],
          ),
        )
      ),
    );
  }
}
