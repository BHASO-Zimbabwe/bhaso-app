import 'package:bhaso/AuthServices/firebaseAuthMethods.dart';
import 'package:bhaso/screens/forgot_password_page.dart';
import 'package:bhaso/screens/signUpPage.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../features/utils/fontsAndColors.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscurePassword = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();




  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  void loginUser(){
    context.read<FirebaseAuthMethods>().loginWithEmail(
        email: emailController.text,
        password: passwordController.text,
        context: context);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [

                      SizedBox(height:80 ),

                      Text("Welcome",style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 31
                      ),
                        textAlign: TextAlign.left,),

                      Text("Back!",style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 31
                      ),
                        textAlign: TextAlign.left,),


                    ],
                  ),
                ),
                Positioned(
                  top: 1,
                  right: 15,

                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [

                      Container(
                        height: 180,

                        width: 210 ,

                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/redLogo.png"),
                              fit: BoxFit.cover
                          ),
                        ),


                      ),
                      // const SizedBox(height: 35,)
                    ],
                  )

                )

              ],


            ),

            //textfields
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  children: [

                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text("Email",
                        style: TextStyle( fontWeight: FontWeight.w400,fontSize: 15),),
                    ),


                    // Container(
                    //   decoration: BoxDecoration(
                    //       border: Border.all(
                    //           color: Colors.grey
                    //       ),
                    //       borderRadius: BorderRadius.circular(12)
                    //   ),),
                    TextFormField(
                        controller: emailController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (email) =>
                          email != null && EmailValidator.validate(email)
                              ? null
                              : "Enter valid Email",
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,

                              ),
                              borderRadius: BorderRadius.circular(12)
                            ),
                            hintText: "Enter email address",
                            contentPadding: EdgeInsets.all(18),


                          )


                    ),
                    const SizedBox(height: 15),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text("Password",
                        style: TextStyle( fontWeight: FontWeight.w400,fontSize: 15),),
                    ),


                    TextFormField(
                        controller: passwordController,
                          obscureText: obscurePassword,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (password) =>
                        password != null && password.length > 6
                            ? null
                            : "Enter a minimum of 6 characters",
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,

                                ),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {
                                    obscurePassword = !obscurePassword;
                                  });


                                }, icon: obscurePassword
                                ?Icon(Icons.visibility_off)
                                : Icon(Icons.visibility)


                            ),


                            contentPadding: EdgeInsets.all(18),

                          )


                    ), SizedBox(height: 59,),



                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF33691E),
                        minimumSize: const Size(290, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      onPressed: loginUser,

                      child: const Text(
                        "Login", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    SizedBox(height: 15,),
                    //texbutton


                          TextButton(
                            onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordPage())); }, child: Text("Forgot your password?",
                               style: TextStyle(
                                         fontSize: 15,
                                        color: Colors.black45

                                       )),),

                          //continue with

                          TextButton(

                              onPressed: (){},
                              child: const Text("or continue with",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black45

                                ),)),


                Wrap(
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: BhasoColors.invisible,

                            borderRadius: BorderRadius.circular(10)
                        ),
                        width: 130,
                        child: TextButton(
                          onPressed: (){},

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage("assets/images/google.png")
                              ),
                           Text('Google',style: TextStyle(fontSize: 14))
                            ],                          // minLeadingWidth: 11,

                          ),
                        ),
                      ),
                      SizedBox(width: 11),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: BhasoColors.invisible,

                            borderRadius: BorderRadius.circular(10)
                        ),
                        width: 130,
                        child: TextButton(
                          onPressed: (){},
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage("assets/images/facebook.png"),
                              ),
                              Text("Facebook",style: TextStyle(fontSize: 14))
                            ],



                          ),
                        ),
                      ),
                    ],
                  ),
                    SizedBox(
                      height: 20,
                    ),

                    // const SizedBox(width: 20),

                  // Text("",style: TextStyle(fontSize: 18,color: Colors.black54),),
                  //   RichText(text: const TextSpan(
                  //     text: "Don't have an account? ",style: TextStyle(fontSize: 15,color:Colors.black54),
                  //     children: [
                  //       TextSpan(text: "SignUp",style: TextStyle(fontSize: 17,color: Colors.green),
                  //       )
                  //     ],
                  //
                  //   )
                  //
                  //   )
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?'),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                        }, child: Text('SignUp',style: TextStyle(color: Colors.green) ,))
                      ],

                    )

                  ]

            ),

            )

    ],




        ),

    );
  }
}
