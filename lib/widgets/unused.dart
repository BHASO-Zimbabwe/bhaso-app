//RaisedButton(
//                      color: Colors.white,
//                       onPressed: navigateToSignUp,
//                       child: Text(
//                         'Sign Up',
//                         style:
//                             TextStyle(color: Colors.blueGrey, fontSize: 24),
//                       ),
//                     ),

//children: [
//          Flex(
//            direction: f,
//            child: Expanded(
//              child: Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Row(
//                  children: [
//                    Container(
//                      child: Column(
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: const [
//                          Text("Welcome",style: TextStyle(
//                              fontWeight: FontWeight.w600,
//                              fontSize: 41
//                          ),
//                            textAlign: TextAlign.left,),
//
//                          Text("Back",style: TextStyle(
//                              fontWeight: FontWeight.w600,
//                              fontSize: 41
//                          ),
//                            textAlign: TextAlign.left,),
//
//
//                        ],
//                      ),
//                    ),
//
//                    Align(
//                      alignment: Alignment.topRight,
//                      child: Container(
//                        height: 250,
//                        width: 250,
//                        decoration: const BoxDecoration(
//                            image: DecorationImage(
//                              image: AssetImage("assets/images/redLogo.png"),
//
//                            )
//                        ),
//                      ),
//                    ),
//
//
//                  ],
//                ),
//              ),
//            ),
// )


// Wrap(
// children: List<Widget>.generate(3,
// (index){
// return Padding(
// padding: const EdgeInsets.all(8.0),
// child: CircleAvatar(
// radius: 29,
// backgroundColor: Colors.grey[300],
// child: CircleAvatar(
// radius: 24,
// backgroundImage: AssetImage("images/" + images[index]),
// ),
// ),
// );
//
// }),
//
// )

//Wrap(
//                    children: [
//                      SizedBox(
//                        height: 35,
//                        width: 130,
//                        child: TextButton(
//                          onPressed: (){},
//                          style: const ButtonStyle(
//                              backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFFDCEDC8))
//                          ),
//
//
//                            child: const ListTile(
//                              leading: CircleAvatar(
//                                  radius: 15,
//                                  backgroundImage: AssetImage("assets/images/google.png")),
//                              // minLeadingWidth: 11,
//                              trailing: Text('Google',style: TextStyle(fontSize: 14),),
//                            ),
//
//                        ),
//                      ),
//                      const SizedBox(width: 9),
//                      SizedBox(
//                          height: 35,
//                          width: 130,
//                          child: TextButton(
//                            onPressed: (){},
//                            style: const ButtonStyle(
//                                backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFFDCEDC8))
//                            ),
//                            child: const ListTile(
//                              leading: CircleAvatar(
//                                radius: 12,
//                                backgroundImage: AssetImage("assets/images/facebook.png"),
//                              ),
//
//
//                              trailing: Text("Facebook",style: TextStyle(fontSize: 14)),
//                            ),
//                          ),
//                        ),
//                    ],
//                  ),


///
/// /                       SizedBox(
// //                         width: 130,
// // >>>>>>> Stashed changes
// //                         child: TextButton(
// //                           onPressed: (){},
// //                           style: const ButtonStyle(
// //                             backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFFDCEDC8))
// //     ),
// //
// //                           child: Row(
// //                             children: [
// //                               CircleAvatar(
// //                                   radius: 15,
// //                                   backgroundImage: AssetImage("assets/images/google.png")
// //                               ),
// //                            Text('Google',style: TextStyle(fontSize: 14))
// //                             ],                          // minLeadingWidth: 11,
// //
// //                           ),
// //                         ),
// //                       ),


///Column(
//           children: [
//             Padding(padding: EdgeInsets.only(top: 25,left: 14,)),
//             Container(
//               child: Row(
//
//                 children: [
//                   IconButton(onPressed: Navigator.of(context).pop,
//                       icon: Icon(Icons.arrow_back_ios_new_outlined) ),
//                   SizedBox(width: 27,),
//
//                   Flexible(child: Title(color: Colors.black,
//                     child: Text("Choose hour frequency",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),))
//
//                 ],
//               ),
//             ),
//
//             //horizontal ScrollAxis
//             Expanded(
//               child:  Container(
//
//                 child:
//                   SizedBox(
//                     height: 55,
//                     child: ListView.builder(
//                         itemCount:hours.length,
//                         scrollDirection: Axis.horizontal,
//                         itemBuilder: (BuildContext context, int index)=>
//                             GestureDetector(
//
//                               onTap: (){
//                                 setState(() {
//                                   clickedIndex=index;
//                                 });
//                               },
//
//                             )
//
//                     ),
//
//                   ),
//
//     ),
//
//             )
//           ],
//         ),