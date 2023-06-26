import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/fontsAndColors.dart';
import 'add_name.dart';

class AddType extends StatefulWidget {
  const AddType({Key? key}) : super(key: key);

  @override
  State<AddType> createState() => _AddTypeState();

}


class _AddTypeState extends State<AddType> {
  late Color screenPickerColor;
  // Color for the picker in a dialog using onChanged.
  late Color dialogPickerColor;
  // Color for picker using the color select dialog.
  late Color dialogSelectColor;
  int selectedType = 1;

  @override
  void initState() {
    super.initState();
    screenPickerColor = Colors.green;  // Material blue.
    dialogPickerColor = Colors.red;   // Material red.
    dialogSelectColor = const Color(0xFFA239CA); // A purple color.
  }
  @override
  Widget build(BuildContext context) {
    moveNext()=>Navigator.pushNamed(context, '/frequency');

    return  Scaffold(
        body: SafeArea(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: ()=>Navigator.pop(context),
                          icon: Icon(Icons. arrow_back_ios_sharp, size: 15,)),
                      Text("Add Medicine Details", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                      SizedBox(width: 30,)
                    ],
                  ),
                  SizedBox(height: 30,),

                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,

                      children: [
                        SizedBox(
                          height: 90,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                              itemBuilder:
                                  (BuildContext context, index)=> GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        selectedType = index;
                                      });

                                    },
                                      child: MedType(index: index, selectedType: selectedType))),

                        ),
                        // SizedBox(height: 20,),
                        SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Card(
                              elevation: 2,
                              child: ColorPicker(

                                // Use the screenPickerColor as start color.
                                color: screenPickerColor,
                                // Update the screenPickerColor using the callback.

                                onColorChanged: (Color color) =>
                                    setState(() =>{
                                    // dialogPickerColor = color,
                                      screenPickerColor = color
                                    }),
                                pickersEnabled:  const <ColorPickerType, bool>{
                                  ColorPickerType.accent: false
                                },
                                width: 44,
                                height: 44,
                                borderRadius: 22,
                                heading: Text(
                                  'Medicine Color',
                                  style: Theme.of(context).textTheme.headlineSmall,
                                ),
                                subheading: Text(
                                  'Select color shade',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            ),
                          ),
                        ),
                        LargeButton(title: "Next", move: moveNext),

                      ],
                    ),
                  ),

                ],
              ),
            ))
    );
  }
}
class MedType extends StatelessWidget{
  final int index;
  final int selectedType;
  List types_list = [
    'assets/icons/capsule.svg',
    "assets/icons/tablet.svg",
    "assets/icons/inhaler.svg",
    "assets/icons/droplet.svg",
    "assets/icons/cream.svg"];
  List types_list_names = [
    'Capsule',
    "Tablet",
    "Inhaler",
    "Drops",
    "Cream"];
  MedType( {required this.index, required this.selectedType});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 70,
      child: Card(
        color: (selectedType == index) ? BhasoColors.secondary: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 10, 4, 4),
              child: SizedBox(

                  child: SvgPicture.asset("${types_list[index]}")
                ,height: 30,),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text("${types_list_names[index]}"),
            )
          ],
        ),
      ),
    );

  }

}
