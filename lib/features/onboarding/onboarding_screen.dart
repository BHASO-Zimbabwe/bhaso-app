import 'package:bhaso/features/menu/menu.dart';
import 'package:bhaso/features/utils/colors_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';
import 'onboarding_contents.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;


  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
        color: BhasoColors.primary,
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemCount: contents.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[i].image,
                          height: SizeConfig.blockV! * 35,
                        ),
                        SizedBox(
                          height: (height >= 840) ? 60 : 30,
                        ),
                        Text(
                          contents[i].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            color: BhasoColors.primary,
                            fontSize: (width <= 550) ? 20 : 35,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          contents[i].desc,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            fontSize: (width <= 550) ? 14 : 25,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                      (int index) => _buildDots(
                        index: index,
                      ),
                    ),
                  ),
                  _currentPage + 1 == contents.length
                      ? Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Menu_Page()));

                                },
                                child: const Text("Login",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, ),),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: BhasoColors.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: (width <= 550)
                                      ? const EdgeInsets.symmetric(
                                          horizontal: 150, vertical: 15)
                                      : EdgeInsets.symmetric(
                                          horizontal: width * 0.2, vertical: 25),
                                  textStyle:
                                      TextStyle(fontSize: (width <= 550) ? 13 : 17),
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Menu_Page()));
                              },
                              child: const Text("Signup", style: TextStyle(color: Colors.green, fontSize: 14,fontWeight: FontWeight.w500),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,

                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1,color: BhasoColors.primary),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: (width <= 550)
                                    ? const EdgeInsets.symmetric(
                                    horizontal: 150, vertical: 15)
                                    : EdgeInsets.symmetric(
                                    horizontal: width * 0.2, vertical: 25),
                                textStyle:
                                TextStyle(fontSize: (width <= 550) ? 13 : 17),
                              ),
                            ),
                          ),
                        ],
                      )
                      : Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  _controller.jumpToPage(2);
                                },
                                child: const Text(
                                  "Skip",
                                  style: TextStyle(color: BhasoColors.textColor,fontWeight: FontWeight.w400),
                                ),
                                style: TextButton.styleFrom(
                                  elevation: 0,
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: (width <= 550) ? 17 : 18,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                      _controller.nextPage(
                                      duration: const Duration(milliseconds: 200),
                                      curve: Curves.easeIn,
                                                    );
                                  },
                                child:  Padding(
                                  padding: (width <= 550)
                                        ? const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 15)
                                        : const EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 25),
                                  child: SvgPicture.asset("assets/images/next.svg"),
                                  ),

                              ),
                              // ElevatedButton(
                              //   onPressed: () {
                              //     _controller.nextPage(
                              //       duration: const Duration(milliseconds: 200),
                              //       curve: Curves.easeIn,
                              //     );
                              //   },
                              //   child: Icon(Icons.arrow_forward_ios),
                              //   style: ElevatedButton.styleFrom(
                              //     backgroundColor: BhasoColors.primary,
                              //     shape: RoundedRectangleBorder(
                              //       borderRadius: BorderRadius.circular(100),
                              //     ),
                              //     elevation: 0,
                              //     padding: (width <= 550)
                              //         ? const EdgeInsets.symmetric(
                              //             horizontal: 20, vertical: 20)
                              //         : const EdgeInsets.symmetric(
                              //             horizontal: 30, vertical: 25),
                              //     textStyle: TextStyle(
                              //         fontSize: (width <= 550) ? 13 : 17),
                              //   ),
                              // ),
                            ],
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
