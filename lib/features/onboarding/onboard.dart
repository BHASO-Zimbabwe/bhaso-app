// import 'dart:ui';
//
// import 'package:bhaso/features/utils/colors_constants.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:onboarding/onboarding.dart';
//
// class Onboarding_Page extends StatefulWidget {
//   const Onboarding_Page({Key? key}) : super(key: key);
//
//   @override
//   State<Onboarding_Page> createState() => _Onboarding_PageState();
// }
//
// class _Onboarding_PageState extends State<Onboarding_Page> {
//   late Material materialButton;
//   late int index;
//   final onboardingPagesList = [
//     PageModel(
//       widget: Column(
//         children: [
//           Expanded(
//             child: SingleChildScrollView(
//                 controller: ScrollController(),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 50,),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 45.0,
//                         vertical: 90.0,
//                       ),
//                       child: Image.asset('assets/images/amico.png',
//                           ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 45.0),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text(
//                           'Track medication',
//
//                           style: TextStyle(
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.w500,
//                             color: BhasoColors.primary,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text(
//                           'You no longer need to worry about getting the right help, we give you access to the best hands',
//                           style: TextStyle(
//                             fontSize: 14.0,
//                             fontWeight: FontWeight.w400,
//                             color: BhasoColors.textColor,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//
//
//
//
//                   ],
//                 ),
//               ),
//           ),
//         ],
//       ),
//
//     ),
//     PageModel(
//       widget: Column(
//         children: [
//           Expanded(
//             child: SingleChildScrollView(
//                 controller: ScrollController(),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 50,),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 45.0,
//                         vertical: 90.0,
//                       ),
//                       child: Image.asset('assets/images/amico2.png',
//                          ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 45.0),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text(
//                           'Get Reminders',
//                           style: TextStyle(
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.w500,
//                             color: BhasoColors.primary,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text(
//                           'You no longer need to worry about getting the right help, we give you access to the best hands',
//                           style: TextStyle(
//                             fontSize: 14.0,
//                             fontWeight: FontWeight.w400,
//                             color: BhasoColors.textColor,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//
//                   ],
//                 ),
//               ),
//           ),
//         ],
//       ),
//
//     ),
//     PageModel(
//       widget: Column(
//         children: [
//           Expanded(
//             child: SingleChildScrollView(
//                 controller: ScrollController(),
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 50,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 45.0,
//                         vertical: 90.0,
//                       ),
//                       child: Image.asset('assets/images/pana.png',
//                           ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 35.0),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text(
//                           'Unlimited Access to caregivers',
//                           style: TextStyle(
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.w500,
//                             color: BhasoColors.primary,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text(
//                           'You no longer need to worry about getting the right help, we give you access to the best hands',
//                           style: TextStyle(
//                             fontSize: 14.0,
//                             fontWeight: FontWeight.w400,
//                             color: BhasoColors.textColor,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//
//                   ],
//                 ),
//               ),
//           ),
//         ],
//       ),
//
//     ),
//   ];
//   @override
//   void initState() {
//     super.initState();
//     materialButton = _skipButton();
//     index = 0;
//   }
//   Material _skipButton({void Function(int)? setIndex}) {
//     return Material(
//       borderRadius: defaultProceedButtonBorderRadius,
//       color: BhasoColors.primary,
//       child: InkWell(
//         borderRadius: defaultProceedButtonBorderRadius,
//         onTap: () {
//           if (setIndex != null) {
//             index = 2;
//             setIndex(2);
//           }
//         },
//         child: const Padding(
//           padding: defaultSkipButtonPadding,
//           child: Text(
//             'Skip',
//             style: defaultSkipButtonTextStyle,
//           ),
//         ),
//       ),
//     );
//   }
//
//   Material get _signupButton {
//     return Material(
//       borderRadius: defaultProceedButtonBorderRadius,
//       color: BhasoColors.primary,
//       child: InkWell(
//         borderRadius: defaultProceedButtonBorderRadius,
//         onTap: () {},
//         child: const Padding(
//           padding: defaultProceedButtonPadding,
//           child: Text(
//             'Sign up',
//             style: defaultProceedButtonTextStyle,
//           ),
//         ),
//       ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: Onboarding(
//
//               pages: onboardingPagesList,
//               onPageChange: (int pageIndex) {
//                 index = pageIndex;
//               },
//               startPageIndex: 0,
//               footerBuilder: (context, dragDistance, pagesLength, setIndex) {
//                 return Padding(
//                       padding: const EdgeInsets.all(45.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           CustomIndicator(
//                             netDragPercent: dragDistance,
//                             pagesLength: pagesLength,
//                             indicator: Indicator(
//                                activeIndicator: ActiveIndicator(color: BhasoColors.textColor),
//                               closedIndicator: ClosedIndicator(color: BhasoColors.primary),
//                               indicatorDesign: IndicatorDesign.polygon(
//                                 polygonDesign: PolygonDesign(
//
//                                   polygon: DesignType.polygon_circle,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           index == pagesLength - 1
//                               ? _signupButton
//                               : _skipButton(setIndex: setIndex)
//                         ],
//                       ),
//
//
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//
//     );
//   }
// }
