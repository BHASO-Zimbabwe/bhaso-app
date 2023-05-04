import 'package:flutter/material.dart';

import '../utils/fontsAndColors.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscurePassword = true;


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
                          fontSize: 41
                      ),
                        textAlign: TextAlign.left,),

                      Text("Back!",style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 41
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
                        style: TextStyle( fontWeight: FontWeight.w400,fontSize: 19),),
                    ),


                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey
                          ),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter email address",
                            contentPadding: EdgeInsets.all(21),

                          )

                      ),
                    ),
                    const SizedBox(height: 5),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text("Password",
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
                          obscureText: obscurePassword,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {

                                    obscurePassword = !obscurePassword;
                                  });


                                }, icon: obscurePassword
                                ?Icon(Icons.visibility_off)
                                : Icon(Icons.visibility)


                            ),

                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(21),

                          )

                      ),
                    ), SizedBox(height: 28,),



                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF33691E),
                        minimumSize: const Size(290, 70),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      onPressed: (){},

                      child: const Text(
                        "Login", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                    ),
                    SizedBox(height: 15,),
                    //texbutton


                          Text(

                              "Forgot your password?",
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black45

                                ),),

                          //continue with

                          TextButton(

                              onPressed: (){},
                              child: const Text("or continue with",
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.black45

                                ),)),


                Wrap(
                    children: [
                      SizedBox(
                        width: 150,
                        child: TextButton(
                          onPressed: (){},

                          child: const ListTile(
                            leading: CircleAvatar(
                              radius: 15,
                              backgroundImage: AssetImage("assets/images/google.png")),
                              // minLeadingWidth: 11,
                            trailing: Text('Google',style: TextStyle(fontSize: 14),),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      SizedBox(
                        width: 150,
                        child: TextButton(
                          onPressed: (){},
                          child: const ListTile(
                            leading: CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage("assets/images/facebook.png"),
                            ),


                            trailing: Text("Facebook",style: TextStyle(fontSize: 14)),
                          ),
                        ),
                      ),
                    ],
                  ),

                    // const SizedBox(width: 20),

                  // Text("",style: TextStyle(fontSize: 18,color: Colors.black54),),
                    RichText(text: const TextSpan(
                      text: "Don't have an account? ",style: TextStyle(fontSize: 15,color:Colors.black54),
                      children: [
                        TextSpan(text: "SignUp",style: TextStyle(fontSize: 17,color: Colors.green),
                        )
                      ],

                    )

                    )


                  ]

            ),

            )

    ],




        ),

    );
  }
}
