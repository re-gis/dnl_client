// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors_in_immutables, file_names, use_key_in_widget_constructors

import 'package:dnl_ui/components/CustomButton.dart';
import 'package:dnl_ui/pages/profile/mainOnboardingPage.dart';
import 'package:dnl_ui/pages/profile/name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profileHome extends StatelessWidget {
  profileHome({Key? key});

  final title5 = TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( // Use Stack widget to cover the whole screen
        fit: StackFit.expand, // Expand the Stack to cover the whole screen
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/02.jpg"),
                fit: BoxFit.cover,  // Ensure the image covers the whole screen
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: Container(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50), // Adjust the border radius as needed
                        ),
                        child: Image.asset("assets/icons/Icons3.png"),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text("It’s Time to set up your profile",style: GoogleFonts.manrope(textStyle: title5),),
                  ],
                ),

                

                CustomButton(title: "LET'S DO IT", color: Colors.white, textColor: Color(0xFFFB685E), borderColor: Colors.transparent, onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MainOnboardingPage();
                  }),
                );})

                // Add more widgets as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
