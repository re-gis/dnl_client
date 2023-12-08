// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, file_names

import 'package:dnl_ui/pages/profile/profileHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/CustomButton.dart';

class otpPage extends StatelessWidget {
  otpPage({super.key});

  final title4 = TextStyle(fontSize: 24,fontWeight: FontWeight.w500);
  final title5 = TextStyle(color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
          child: Column(
            children: [
               Padding(
                 padding: const EdgeInsets.only(top: 70.0),
                 child: Container(
                  width: 60,
                  height: 60,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    borderRadius: BorderRadius.circular(50), // Adjust the border radius as needed
                  ),
                  child: Image.asset("assets/icons/Icon - Shield.png"),
                               ),
               ),
              const SizedBox(height: 20,),
              Text("Enter your verification code",style: GoogleFonts.manrope(textStyle: title4),),
              const SizedBox(height: 15,),
              Text("The code has been sent to your number:\n"
                "+380 97 777 11 11",
                 textAlign: TextAlign.center,
                style: GoogleFonts.manrope(textStyle: title5),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: TextStyle(color: Color(0xFFFB685E), fontSize: 16.0),
                        // keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 10.0), // Adjust padding as needed
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFB685E)), // Color of the border
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFB685E)), // Color of the border when focused
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: TextStyle(color: Color(0xFFFB685E), fontSize: 16.0),
                        // keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 10.0), // Adjust padding as needed
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFB685E)), // Color of the border
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFB685E)), // Color of the border when focused
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: TextStyle(color: Color(0xFFFB685E), fontSize: 16.0),
                        // keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 10.0), // Adjust padding as needed
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFB685E)), // Color of the border
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFB685E)), // Color of the border when focused
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: TextStyle(color: Color(0xFFFB685E), fontSize: 16.0),
                        // keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 10.0), // Adjust padding as needed
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFB685E)), // Color of the border
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFB685E)), // Color of the border when focused
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 100,),

              Row(
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
                            return profileHome();
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
              )

            ],
          ),
      ),
    );
  }
}
