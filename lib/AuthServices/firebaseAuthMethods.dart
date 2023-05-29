import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../screens/homePage.dart';
import '../widgets/showSnackBar.dart';

class FirebaseAuthMethods{
  final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);

  //get user
  User? _user;



  User get user => _auth.currentUser!;

  //state persistence
  Stream<User?> get authState => _auth.authStateChanges();

  //FirebaseAuth.instance.userChanges(;

  //FirebaseAuth.instance.idTokenChanges(;


  //Email sign up
Future<void>signUpWithEmail({
  required String name,
  required String email,
  required String password,
  required BuildContext context,
})
  async{
  try{
    await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password);

    await sendEmailVerification(context);


  } on FirebaseAuthException catch(e){
    showSnackBar(context, e.message!);

  }
  }

  //email login
  Future<void>loginWithEmail({
    required String email,
    required String password,
    required BuildContext context,

})async {
  try{
    UserCredential userCred= await _auth.signInWithEmailAndPassword(
        email: email,
        password: password);
    _user = userCred.user;
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));


  }
  on FirebaseAuthException catch (e){
    showSnackBar(context, e.message!);
  }
  }

  //email verification
Future<void> sendEmailVerification(BuildContext context) async {
  try{
    _auth.currentUser!.sendEmailVerification();
    showSnackBar(context, "Email Verification sent");
  }
  on FirebaseAuthException catch (e){

    //show in snacbar the firebase error
    showSnackBar(context,e.message!);
  }
}

//sign out
Future<void> signOut(BuildContext context)async {
  try{
   await _auth.signOut();
  }on FirebaseAuthException catch(e){
    showSnackBar(context, e.message!);
  }

}
}