import 'package:bhaso/features/menu/report/pages/report/success_report.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../utils/fontsAndColors.dart';



class ReportIssues extends StatefulWidget {
   const ReportIssues({Key? key}) : super(key: key);

  @override
  State<ReportIssues> createState() => _ReportIssuesState();
}

class _ReportIssuesState extends State<ReportIssues> {
   int selectedValue = 0;

  String initialCountry = "NG";
 TextEditingController controller = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: "NG");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),

                    child: Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: const Icon(Icons.arrow_back_ios,size: 20,)),

                        const Expanded(
                          child: Align(
                              alignment: Alignment.center,
                              child: Text('Report Issues',style: TextStyle(color: BhasoColors.titleColor, fontSize: 18, fontWeight: FontWeight.w500,fontFamily: 'Poppins-Medium', ))),
                        ),


                      ],
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('We\'d love to hear from you. Please fill out this form',
                    textAlign: TextAlign.center,style: TextStyle(color: BhasoColors.textColor),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Full name',style: TextStyle(fontWeight: FontWeight.w600),),
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
                          contentPadding: EdgeInsets.all(8),

                        )

                    ),
                  ),

                  SizedBox(height: 5),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Title(color: Colors.black, child: const Text("Email",
                      style: TextStyle( fontWeight: FontWeight.w600,fontSize: 15),)
                    ),
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
                          contentPadding: EdgeInsets.all(8),

                        )

                    ),
                  ),
                  const SizedBox(height: 11),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Title(color: Colors.black, child: const Text("Phone number",
                      style: TextStyle( fontWeight: FontWeight.w600,fontSize: 15),)
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey,)
                    ),
                    child: InternationalPhoneNumberInput(onInputChanged: (PhoneNumber number){
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
                      inputBorder: InputBorder.none,
                      onSaved: (PhoneNumber number) {
                        print('On Saved: $number');
                      },
                    ),
                  ),

                  const SizedBox(height: 11),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Title(color: Colors.black, child: const Text("Message ",
                      style: TextStyle( fontWeight: FontWeight.w600,fontSize: 15),)
                    ),
                  ),

                  Container(
                    height: 120,
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
                  Row(
                    children:  [
                      Checkbox(value: false, onChanged: (val){}),
                      Text('You agree to our friendly privacy policy')
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF33691E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Success_Page()));

                        },

                        child: const Text(
                          "Report Issue", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500, fontSize: 19),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
