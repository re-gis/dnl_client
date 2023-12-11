// ignore_for_file: camel_case_types, prefer_const_constructors, file_names

import 'package:dnl_ui/components/CountryPicker.dart';
import 'package:dnl_ui/pages/authFlow/otpPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class phoneNumberPage extends StatelessWidget {
  phoneNumberPage({super.key});
  

  final title3 = TextStyle(fontSize: 24,fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.all(15),
          child: Column(
            children: [
                Container(
                  padding: EdgeInsets.only(top: 70),
                  // child: Image.asset(
                  //   'assets/icons/phone.svg', // Replace with the actual path to your image
                  //   width: 48, // Set the desired width
                  //   height: 48, // Set the desired height
                  // ),
                  child:Center(
                    child: Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.pink[50],
                        borderRadius: BorderRadius.circular(50), // Adjust the border radius as needed
                      ),
                      child: Image.asset("assets/icons/Icons.png"),
                    ),
                  ),
                ),
              const SizedBox(height: 20,),
              Text("Enter and verify Mobile phone",style: GoogleFonts.manrope(textStyle: title3),),
              // GoogleFonts.manrope(textStyle: buttonStyles)
              const SizedBox(height: 20,),
              CountryPicker(),


              const SizedBox(height: 70,),

              Container(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                          decoration: BoxDecoration(
                            color: Colors.transparent, // Set the background color
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Color(0xFFFB685E), width: 2.0),
                          ),
                          child: Text(
                            'BACK',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFB685E), // Set text color
                              fontWeight: FontWeight.bold, // Set text font weight
                              fontSize: 16.0, // Set text font size
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Add some space between the buttons
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return otpPage();
                            }),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                          decoration: BoxDecoration(
                            color: Color(0xFFFB685E), // Set the background color for confirmation
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            'CONFIRM',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white, // Set text color
                              fontWeight: FontWeight.bold, // Set text font weight
                              fontSize: 16.0, // Set text font size
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


              )
              // Your other widgets...
            ],
          ),

      )
    );
  }
}
