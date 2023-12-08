// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class names extends StatelessWidget {
  names({super.key});

  final title6 = TextStyle(fontSize: 24,fontWeight: FontWeight.w700);
  final text1 = TextStyle(color: Colors.grey, fontSize: 17.0,fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
            Container(
              margin: EdgeInsets.only(top: 30),
            width: 60,
            height: 60,
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.pink[50],
              borderRadius: BorderRadius.circular(50), // Adjust the border radius as needed
            ),
            child: Image.asset("assets/icons/Icons3.png"),
          ),
        const SizedBox(height: 15,),
        Text("What’s your name?",style: GoogleFonts.manrope(textStyle: title6),),
              const SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'First name(required)',
                        hintStyle: GoogleFonts.manrope(textStyle: text1),
                        filled: true,
                        fillColor: Colors.grey[300],
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
                      ),
                    ),

                    const SizedBox(height: 30,),

                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Last name(optional)',
                        hintStyle: GoogleFonts.manrope(textStyle: text1),
                        filled: true,
                        fillColor: Colors.grey[300],
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
