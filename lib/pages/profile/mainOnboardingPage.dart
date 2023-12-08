// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_constructors_in_immutables, library_private_types_in_public_api, body_might_complete_normally_nullable, file_names

import 'package:dnl_ui/pages/profile/drink.dart';
import 'package:dnl_ui/pages/profile/name.dart';
import 'package:dnl_ui/pages/profile/smoke.dart';
import 'package:flutter/material.dart';
import '../../components/indicator.dart';
import 'birthDay.dart';
import 'gender.dart';

import 'height.dart';
import 'relationShipStatus.dart';

class MainOnboardingPage extends StatefulWidget {
  MainOnboardingPage({Key? key}) : super(key: key);

  @override
  _MainOnboardingPageState createState() => _MainOnboardingPageState();
}

class _MainOnboardingPageState extends State<MainOnboardingPage> {
  PageController controller = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top section: DotIndicator
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: DotIndicator(
                itemCount:
                    14, // Adjust the itemCount based on your number of pages
                currentPage: currentPage,
                onPageChanged: (index) {
                  controller.animateToPage(
                    index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  // Middle section: PageView
                  PageView.builder(
                    controller: controller,
                    itemCount:
                        14, // Adjust the itemCount based on your number of pages
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Container(
                          color: Colors.white,
                          child: Center(
                            child: names(),
                          ),
                        );
                      } else if (index == 1) {
                        return Container(
                          color: Colors.white,
                          child: Center(
                            child: Gender(),
                          ),
                        );
                      } else if (index == 2) {
                        return Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height - 105,
                              color: Colors.white,
                              child: Center(
                                child: BirthDay(),
                              ),
                            ),
                          ],
                        );
                      } else if (index == 3) {
                        return Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height - 105,
                              color: Colors.white,
                              child: Center(
                                child: ProfilePhysical(),
                              ),
                            ),
                          ],
                        );
                      } else if (index == 4) {
                        return Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height - 105,
                              color: Colors.white,
                              child: Center(
                                child: RelationPage(),
                              ),
                            ),
                          ],
                        );
                      } else if (index == 5) {
                        return Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height - 105,
                              color: Colors.white,
                              child: Center(
                                child: smokePage(),
                              ),
                            ),
                          ],
                        );
                      } else if (index == 6) {
                        return Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height - 105,
                              color: Colors.white,
                              child: Center(
                                child: DrinkPage(),
                              ),
                            ),
                          ],
                        );
                      }
                      // Your pages here (names(), names(), ...)
                    },
                  ),
                  // Bottom section: Buttons
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                if (currentPage == 0) {
                                  // Handle the navigation to the home page here
                                  // For example, you can use Navigator.pop() to return to the previous screen
                                  Navigator.pop(context);
                                } else {
                                  controller.previousPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Color(0xFFE94057),
                                side: BorderSide(color: Color(0xFFE94057)),
                                padding: EdgeInsets.all(12.0),
                              ),
                              child: Text("BACK"),
                            ),
                          ),

                          SizedBox(
                              width: 16.0), // Add space between the buttons
                          Expanded(
                            child: ElevatedButton(
                              onPressed: (currentPage < 13)
                                  ? () {
                                      controller.nextPage(
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    }
                                  : () {
                                      // Handle the action you want when the "CONFIRM" button is pressed
                                    },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFFE94057), // Background color
                                onPrimary: Colors.white, // Text color
                                padding: EdgeInsets.all(
                                    12.0), // Add padding around the button
                              ),
                              child:
                                  Text((currentPage < 13) ? "NEXT" : "CONFIRM"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
