import 'package:bhaso/screens/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

//to get the current user
  final User? user = FirebaseAuth.instance.currentUser;


  Future<void> signOut() async{
    await FirebaseAuth.instance.signOut();
  }
  //to show the email of the current user
  Widget userId(){
    return Text(user?.email?? "User email");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to Bhaso"),

            userId(),



            ElevatedButton(onPressed:  () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
              signOut();

            },
                child: Text("Logout"))
          ],
        ),
      ),
    );
  }
}
