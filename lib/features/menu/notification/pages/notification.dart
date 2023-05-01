
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../utils/fontsAndColors.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                child: Text('Notification',style: TextStyle(color: BhasoColors.titleColor, fontSize: 18, fontWeight: FontWeight.w500,fontFamily: 'Poppins-Medium', ))),
                          ),

                      ],
                    ),

                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: BhasoColors.headColor,width:
                    0.5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text('Push notifications',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: BhasoColors.headColor),),
                            ),
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text('Tap to receive notifications',style: TextStyle(fontWeight: FontWeight.w400, color: BhasoColors.headColor, fontSize: 14),),
                            )
                          ],
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
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: BhasoColors.headColor,width:
                      0.5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text('Updates from Bhaso',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: BhasoColors.headColor),),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4.0),
                                width: MediaQuery.of(context).size.width * 0.7,

                                child: const Text('Receive updates from kitchen about your meal preparations and status ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontWeight: FontWeight.w300, color: BhasoColors.headColor, fontSize: 14,))),

                           Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Email',style: TextStyle(fontWeight: FontWeight.w500, color: BhasoColors.headColor, fontSize: 16,)),
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
                            const Divider(
                              color: BhasoColors.headColor,

                            ),
                            const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text('Push Notifications',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: BhasoColors.headColor),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(4.0),
                                    width: MediaQuery.of(context).size.width * 0.6,

                                    child: const Text('Receive messages on your mobile devices or smart devices',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontWeight: FontWeight.w300, color: BhasoColors.headColor, fontSize: 14,))),
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
                            const Divider(
                              color: BhasoColors.headColor,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Text Messages', style: TextStyle(fontWeight: FontWeight.w400),),
                                ),
                                FlutterSwitch(
                                  width: 65.0,
                                  height: 35.0,
                                  valueFontSize: 25.0,
                                  toggleSize: 20.0,
                                  value: !isSwitched,
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




                          ],
                        ),





                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: BhasoColors.headColor,width:
                      0.5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text('Reminders',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: BhasoColors.headColor),),
                        ),
                        Container(
                            padding: const EdgeInsets.all(4.0),
                            width: MediaQuery.of(context).size.width * 0.7,

                            child: const Text('Receive reminders to select goals, update and other reminders related to your activities on Smarthealth. ',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.w300, color: BhasoColors.headColor, fontSize: 14,))),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Email',style: TextStyle(fontWeight: FontWeight.w500, color: BhasoColors.headColor, fontSize: 16,)),
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
                        const Divider(
                          color: BhasoColors.headColor,

                        ),
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text('Push Notifications',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: BhasoColors.headColor),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(4.0),
                                width: MediaQuery.of(context).size.width * 0.6,

                                child: const Text('Receive messages on your mobile devices or smart devices',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontWeight: FontWeight.w300, color: BhasoColors.headColor, fontSize: 14,))),
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
                        const Divider(
                          color: BhasoColors.headColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Text Messages', style: TextStyle(fontWeight: FontWeight.w400),),
                            ),
                            FlutterSwitch(
                              width: 65.0,
                              height: 35.0,
                              valueFontSize: 25.0,
                              toggleSize: 20.0,
                              value: !isSwitched,
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
                        const Divider(
                          color: BhasoColors.headColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Phone calls', style: TextStyle(fontWeight: FontWeight.w400),),
                            ),
                            FlutterSwitch(
                              width: 65.0,
                              height: 35.0,
                              valueFontSize: 25.0,
                              toggleSize: 20.0,
                              value: !isSwitched,
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




                      ],
                    ),





                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: BhasoColors.headColor,width:
                      0.5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text('Promotion and tips',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: BhasoColors.headColor),),
                        ),
                        Container(
                            padding: const EdgeInsets.all(4.0),
                            width: MediaQuery.of(context).size.width * 0.7,

                            child: const Text('Receive coupons, promotions, surveys, and product updates from Our Haven.',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.w300, color: BhasoColors.headColor, fontSize: 14,))),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Email',style: TextStyle(fontWeight: FontWeight.w500, color: BhasoColors.headColor, fontSize: 16,)),
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
                        const Divider(
                          color: BhasoColors.headColor,

                        ),
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text('Push Notifications',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: BhasoColors.headColor),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(4.0),
                                width: MediaQuery.of(context).size.width * 0.6,

                                child: const Text('Receive messages on your mobile devices or smart devices',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontWeight: FontWeight.w300, color: BhasoColors.headColor, fontSize: 14,))),
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
                        const Divider(
                          color: BhasoColors.headColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Text Messages', style: TextStyle(fontWeight: FontWeight.w400),),
                            ),
                            FlutterSwitch(
                              width: 65.0,
                              height: 35.0,
                              valueFontSize: 25.0,
                              toggleSize: 20.0,
                              value: !isSwitched,
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
                      ],
                    ),





                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
