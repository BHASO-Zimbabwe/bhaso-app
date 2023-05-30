import 'package:bhaso/AuthServices/firebaseAuthMethods.dart';
import 'package:bhaso/widgets/showSnackBar.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';


class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController _emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    Future<void> onPressed(email) async {
      try{
        await context.read<FirebaseAuthMethods>().passwordReset(email, context);

      }
      on FirebaseAuthException catch (e){
        showSnackBar(context, e.message!);
      }
    }
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 30),
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.asset("assets/images/bhasoLogo.png",
                            height: 200, width: 300),

                        //Image.asset("assets/img.png")
                      ),
                      SizedBox(height: 50),
                      Text(
                        "Forgot Password!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                "Enter your e-mail address to get a link to \n"
                                "               reset your password",
                                style: TextStyle(fontSize: 12.5)),
                          ],
                        ),
                      ),
                      SizedBox(height: 70),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _emailController,
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
                          labelText: 'Email Address',
                          hintText: 'johndoe@gmail.com',
                          // Here is key idea
                          suffixIcon: IconButton(
                            icon: Icon(Icons.email_outlined),
                            color: Colors.grey,
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(height: 60),
                      ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF33691E),
                            minimumSize: const Size(290, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          onPressed: () {
                            final isValid = formKey.currentState!.validate();
                            if (isValid)
                              {
                                onPressed(_emailController.text);
                              }else{
                              showSnackBar(context, "Enter valid Email");
                            }

                          },
                          child: const Text(
                            'Reset your Password',
                            style: TextStyle(color: Colors.white),
                          )),
                    ]),
              ),
            )));
  }


}
