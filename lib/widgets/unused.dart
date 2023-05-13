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



// Wrap(
//                    children: [
//
//                      Container(
//                        height: 40,
//                        decoration: BoxDecoration(
//                            color: BhasoColors.invisible,
//
//                            borderRadius: BorderRadius.circular(10)
//                        ),
//                        width: 130,
//                        child: TextButton(
//                          onPressed: (){},
//                          // style: const ButtonStyle(
//                          //     backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFFDCEDC8))
//                          // ),
//
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceAround,
//                            children: const [
//                              CircleAvatar(
//                                  radius: 15,
//                                  backgroundImage: AssetImage("assets/images/google.png")
//                              ),
//                              Text('Google',style: TextStyle(fontSize: 14))
//                            ],                          // minLeadingWidth: 11,
//
//                          ),
//                        ),
//                      ),
//
//                      SizedBox(width: 11),
//                      Container(
//                        height: 40,
//                        decoration: BoxDecoration(
//                            color: BhasoColors.invisible,
//
//                            borderRadius: BorderRadius.circular(10)
//                        ),
//                        width: 130,
//                        child: TextButton(
//                          onPressed: (){},
//                          child:
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceAround,
//                            children: [
//                              CircleAvatar(
//                                radius: 12,
//                                backgroundImage: AssetImage("assets/images/facebook.png"),
//                              ),
//                              Text("Facebook",style: TextStyle(fontSize: 14))
//                            ],
//
//                          ),
//                        ),),
//                    ],
//                  ),