import 'package:bhaso/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import '../AuthServices/firebaseAuthMethods.dart';
import '../features/utils/fontsAndColors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {



  bool obscureSignupPassword = true;


  //text controller

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  //to avoid
  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void signUpUser()async{
    context.read<FirebaseAuthMethods>().signUpWithEmail(
      name:  nameController.text,
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

                    SizedBox(height:72 ),

                    Text("Create",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 31
                    ),
                      textAlign: TextAlign.left,),

                    Text("Account!",style: TextStyle(
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
                        height: 160,

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

          //textfilelds
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: Column(
               children: [
                 const Align(
                   alignment: Alignment.topLeft,
                   child: Text("Full name",
                     style: TextStyle( fontWeight: FontWeight.w400,fontSize: 15),),
                 ),


                 Container(
                   decoration: BoxDecoration(
                       border: Border.all(
                           color: Colors.grey
                       ),
                       borderRadius: BorderRadius.circular(12)
                   ),
                   child:  TextField(
                     controller: nameController,
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         hintText: "Enter name",
                         contentPadding: EdgeInsets.all(15),

                       )

                   ),
                 ),
                 const SizedBox(height: 5),

                 const Align(
                   alignment: Alignment.topLeft,
                   child: Text("Email",
                     style: TextStyle( fontWeight: FontWeight.w400,fontSize: 15),),
                 ),


                 Container(
                   decoration: BoxDecoration(
                       border: Border.all(
                           color: Colors.grey
                       ),
                       borderRadius: BorderRadius.circular(12)
                   ),
                   child:  TextField(
                     controller: emailController,
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         hintText: "Enter email address",
                         contentPadding: EdgeInsets.all(15),

                       )

                   ),
                 ),
                 const SizedBox(height: 5),

                 const Align(
                   alignment: Alignment.topLeft,
                   child: Text("Password",
                     style: TextStyle( fontWeight: FontWeight.w400,fontSize: 15),),
                 ),

                 Container(
                   decoration: BoxDecoration(
                       border: Border.all(
                           color: Colors.grey
                       ),
                       borderRadius: BorderRadius.circular(12)
                   ),
                   child: TextField(
                     controller: passwordController,
                       obscureText: obscureSignupPassword,
                       decoration: InputDecoration(
                         suffixIcon: IconButton(
                             onPressed: (){
                               setState(() {
                                 obscureSignupPassword = !obscureSignupPassword;
                               });


                             }, icon: obscureSignupPassword
                             ?const Icon(Icons.visibility_off)
                             : 
                         const Icon(Icons.visibility)


                         ),

                         border: InputBorder.none,
                         contentPadding: EdgeInsets.all(15),

                       )

                   ),
                 ),
                 const SizedBox(height: 15,),

                const Text("By creating an account, you agree to our",style: TextStyle(fontSize: 15),),
                 TextButton(onPressed: (){}, child: const Text("Privacy Policy and Terms of Use",style: TextStyle(fontSize: 15, color: BhasoColors.primary))),
SizedBox(height: 20,),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: const Color(0xFF33691E),
                     minimumSize: const Size(290, 50),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(13),
                     ),
                   ),
                   onPressed: signUpUser,

                   child: const Text(
                     "Create account", style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold, fontSize: 15),
                   ),
                 ),

                 TextButton(

                     onPressed: (){},
                     child: const Text("or continue with",
                       style: TextStyle(
                           fontSize: 15,
                           color: Colors.black45

                       ),)),
                 //google and fb icons
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
                         // style: const ButtonStyle(
                         //     backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFFDCEDC8))
                         // ),

                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: const [
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
                       ),),
                   ],
                 ),






                 // const Padding(padding: EdgeInsets.only(bottom: 15)),

                 // RichText(text: const TextSpan(
                 //   text: "Already have an account? ",style: TextStyle(fontSize: 15,color:Colors.black54),
                 //   children: [
                 //     TextSpan(text: "Login",style: TextStyle(fontSize: 17,color: Colors.green),
                 //     )
                 //
                 //   ],
                 //
                 // )
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Already have an account?'),
                     TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                     }, child: Text('Login',style: TextStyle(color: Colors.green) ,))
                   ],

                 )





               ],
             ),
           )
        ],
      ),
    );
  }
}
