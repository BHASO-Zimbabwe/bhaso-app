import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../widgets/showSnackBar.dart';

class FirebaseAuthMethods{
  final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);


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

  //email verification
Future<void> sendEmailVerification(BuildContext context) async {
  try{
    _auth.currentUser!.sendEmailVerification();
    showSnackBar(context, "Email Verification sent");
  }
  on FirebaseAuthException catch (e){
    showSnackBar(context,e.message!);
  }
}
}