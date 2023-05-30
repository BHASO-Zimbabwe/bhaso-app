import 'package:bhaso/AuthServices/firebaseAuthMethods.dart';
import 'package:bhaso/screens/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:miked_care/features/auth/widgets/new_password_set.dart';
// import 'package:miked_care/features/auth/pages/reset_password_page.dart';
// import 'package:open_mail_app/open_mail_app.dart';


class CheckEmail extends StatefulWidget {
  const CheckEmail({Key? key,  required this.email}) : super(key: key);
  final String email;
  @override
  State<CheckEmail> createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(


              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    SizedBox(

                      height: 150,
                      width: 150,
                      child:Image.asset("assets/images/bhasoLogo.png",height: 200,width: 300,),

                      //Image.asset("assets/img.png")
                    ),
                    Text("Check your mail",style:TextStyle(color: Colors.black,fontSize: 32,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.fromLTRB(60, 10, 40, 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("We sent a password link to \n"
                              "${widget.email}", style: TextStyle(fontSize: 13.5)),

                        ],

                      ),
                    ),


                    SizedBox(height:60),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF33691E),
                          minimumSize: const Size(290, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                        onPressed: () {onPressed();},
                        child: const Text('Login',style: TextStyle(color: Colors.white),)
                    ) ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Didn't receive mail?"),
                        TextButton(onPressed: (){onPressed2(context);}, child: Text("Click to Resend"))
                      ],
                    )
                  ]
              ),

            )

        )
    );
  }
  void onPressed2(context2) {
    // Auth auth = Auth();
    // String? email = FirebaseAuth.instance.currentUser?.email;
    context.read<FirebaseAuthMethods>().passwordReset(widget.email, context2);
  }
  void onPressed() {
       Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
  }

  // void checkmail()async {
  //    await OpenMailApp.openMailApp();
  // }
}
