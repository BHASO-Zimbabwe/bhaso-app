import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../utils/fontsAndColors.dart';


class AppearancePage extends StatefulWidget {
   AppearancePage({Key? key}) : super(key: key);

  @override
  State<AppearancePage> createState() => _AppearancePageState();
}

class _AppearancePageState extends State<AppearancePage> {
   final List<String> genderItems = [
     'Low',
     'Normal',
     'High'
   ];

   bool isSwitched = false;
   String? selectedValue;


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
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
                        child: Text('Appearance',style: TextStyle(color: BhasoColors.titleColor, fontSize: 18, fontWeight: FontWeight.w500,fontFamily: 'Poppins-Medium', ))),
                  ),


            ],
          ),
        ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:BhasoColors.invisible,width: 1)
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Text to Speech',style: TextStyle(fontWeight: FontWeight.w500, color: BhasoColors.headColor, fontSize: 16,)),
                  ),
                  FlutterSwitch(
                    width: 65.0,
                    height: 35.0,
                    valueFontSize: 25.0,
                    toggleSize: 20.0,
                    value: isSwitched,
                    borderRadius: 30.0,
                    activeColor: BhasoColors.primary,
                    padding: 8.0,
                    onToggle: (val) {
                      setState(() {
                        isSwitched = val;
                      });
                    },
                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),

            Container(
              height: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: BhasoColors.invisible,)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Colour Contrast'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: DropdownButtonFormField2(
                      decoration: const InputDecoration(
                          border: InputBorder.none
                      ),
                      hint: const Text(
                        'Medium',
                        style: TextStyle(fontSize: 14),
                      ),
                      items: genderItems
                          .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Please select gender.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        //Do something when changing the item if you want.
                      },
                      onSaved: (value) {
                        selectedValue = value.toString();
                      },
                      buttonStyleData: const ButtonStyleData(
                        height: 60,
                        padding: EdgeInsets.only(left: 20, right: 10),
                      ),
                      iconStyleData: const IconStyleData(
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.black45,
                        ),
                        iconSize: 30,
                      ),
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

            Container(
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: BhasoColors.invisible,)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Text Size'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: DropdownButtonFormField2(
                      decoration: const InputDecoration(
                        border: InputBorder.none
                      ),
                      hint: const Text(
                        'Medium',
                        style: TextStyle(fontSize: 14),
                      ),
                      items: genderItems
                          .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Please select gender.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        //Do something when changing the item if you want.
                      },
                      onSaved: (value) {
                        selectedValue = value.toString();
                      },
                      buttonStyleData: const ButtonStyleData(
                        height: 60,
                        padding: EdgeInsets.only(left: 20, right: 10),
                      ),
                      iconStyleData: const IconStyleData(
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.black45,
                        ),
                        iconSize: 30,
                      ),
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

            Container(
              height: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: BhasoColors.invisible,)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Text Size'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: DropdownButtonFormField2(
                      decoration: const InputDecoration(
                          border: InputBorder.none
                      ),
                      hint: const Text(
                        'Medium',
                        style: TextStyle(fontSize: 14),
                      ),
                      items: genderItems
                          .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Please select gender.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        //Do something when changing the item if you want.
                      },
                      onSaved: (value) {
                        selectedValue = value.toString();
                      },
                      buttonStyleData: const ButtonStyleData(
                        height: 60,
                        padding: EdgeInsets.only(left: 20, right: 10),
                      ),
                      iconStyleData: const IconStyleData(
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.black45,
                        ),
                        iconSize: 30,
                      ),
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


                ],
              ),
           ),

         ),
       );
  }
}