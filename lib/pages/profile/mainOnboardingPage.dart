import 'package:dnl_ui/pages/profile/name.dart';
import 'package:flutter/material.dart';
import '../../components/indicator.dart';
import 'birthDay.dart';
import 'gender.dart';

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
              padding: const EdgeInsets.only(top:10.0),
              child: DotIndicator(
                itemCount: 14, // Adjust the itemCount based on your number of pages
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
                    itemCount: 14, // Adjust the itemCount based on your number of pages
                    itemBuilder: (context, index) {

                      if(index == 0){
                        return Container(
                          color: Colors.white,
                          child: Center(
                            child: names(),
                          ),
                        );
                      } else if (index == 1){
                        return Container(
                          color: Colors.white,
                          child: Center(
                            child: Gender(),
                          ),
                        );
                      }else if(index == 2){
                        return Container(
                          color: Colors.white,
                          child: Center(
                            child: BirthDay(),
                          ),
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
                                controller.previousPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
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


                          SizedBox(width: 16.0), // Add space between the buttons
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
                                padding: EdgeInsets.all(12.0), // Add padding around the button
                              ),
                              child: Text((currentPage < 13) ? "NEXT" : "CONFIRM"),
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
