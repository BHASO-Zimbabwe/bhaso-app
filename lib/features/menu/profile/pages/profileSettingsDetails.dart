import 'package:bhaso/features/menu/profile/pages/changePassword.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors_constants.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';




class ProfileSettingsDetails extends StatefulWidget {
  const ProfileSettingsDetails({Key? key}) : super(key: key);

  @override
  State<ProfileSettingsDetails> createState() => _ProfileSettingsDetailsState();
}

class _ProfileSettingsDetailsState extends State<ProfileSettingsDetails> {
  int selectedValue = 0;

  final TextEditingController controller = TextEditingController();
  String initialCountry = "NG";
  PhoneNumber number = PhoneNumber(isoCode: "NG");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(15, 39, 15, 29),
        children: [

          Row(

            children: [
               IconButton(
                icon: Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: () {
                  Navigator.pop(context);
              },),
               SizedBox(width: 89),


               const Text("Profile",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                      ),)

            ],
          ),
          SizedBox(height: 25),

          const CircleAvatar(
            radius: 60,
            backgroundColor: BhasoColors.textColor,
            child: CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage("assets/images/headshot.jpg"),
            ),
          ),
          SizedBox(height: 25),


          Title(color: Colors.black, child: const Text("Username",
            style: TextStyle( fontWeight: FontWeight.w400,fontSize: 19),)
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
                  contentPadding: EdgeInsets.all(21),

                )

            ),
          ),
          SizedBox(height: 5),
          Title(color: Colors.black, child: const Text("Gender",
            style: TextStyle( fontWeight: FontWeight.w400,fontSize: 19),)
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12.0),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RadioListTile(
                          title: Text('Male'),
                          value: 1,
                          groupValue: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = 1;
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text('Female'),
                          value: 2,
                          groupValue: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = 2;
                            });
                          },
                        ),

                      ],
                    ),
                  ),
                )
              ]
          ),
          SizedBox(height: 5),

          Title(color: Colors.black, child: const Text("Email",
            style: TextStyle( fontWeight: FontWeight.w400,fontSize: 19),)
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
                  contentPadding: EdgeInsets.all(21),

                )

            ),
          ),
          const SizedBox(height: 11),
          Title(color: Colors.black, child: const Text("Phone number",
            style: TextStyle( fontWeight: FontWeight.w400,fontSize: 19),)
          ),

          InternationalPhoneNumberInput(onInputChanged: (PhoneNumber number){
            print(number.phoneNumber);

          },
            onInputValidated: (bool value) {
              print(value);
            },

            selectorConfig: const SelectorConfig(
              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
            ),
            ignoreBlank: false,
            autoValidateMode: AutovalidateMode.disabled,
            selectorTextStyle: TextStyle(color: Colors.black),
            initialValue: number,
            textFieldController: controller,
            formatInput: true,
            keyboardType:
            const TextInputType.numberWithOptions(signed: true, decimal: true),
            inputBorder: OutlineInputBorder(),
            onSaved: (PhoneNumber number) {
              print('On Saved: $number');
            },
          ),

          const SizedBox(height: 11),

          Title(color: Colors.black, child: const Text("Password",
            style: TextStyle( fontWeight: FontWeight.w400,fontSize: 19),)
          ),

          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey
                ),
                borderRadius: BorderRadius.circular(12)
            ),
            child: const TextField(
              obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(21),

                )

            ),
          ),
          
          Container(
            alignment: Alignment.topLeft,
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChangePassword()));
            } , child: const Text("Change Password",style:
            TextStyle( fontWeight: FontWeight.w400,fontSize: 19,color: BhasoColors.secondary)
            )
            ),
          ),


          const SizedBox(height: 7),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF33691E),
              minimumSize: const Size(290, 70),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            onPressed: (){},

            child: const Text(
              "Save changes", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold, fontSize: 19),
            ),
          ),




















        ],
      )

    );
  }
}

