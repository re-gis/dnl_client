// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:dnl_ui/components/CustomButton.dart';
import 'package:dnl_ui/signin/SigninPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'authFlow/phoneNumberPage.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  final title1 = TextStyle(fontSize: 36, fontWeight: FontWeight.w700, color: Colors.white);
  final title2 = TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/01.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 66),
                  child: Text("Date Night Live",
                      style: GoogleFonts.manrope(textStyle: title1)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Enjoy the true love",
                    style:GoogleFonts.manrope(textStyle: title2)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ElevatedButton(onPressed: () {}, child: Text("CREATE ACCOUNT")),
                // ElevatedButton(onPressed: () {}, child: Text("SIGN IN")),
                Column(
                  children: [
                    CustomButton(
                      title: "CREATE ACCOUNT",
                      color: Colors.white,
                      textColor: Color(0xFFFB685E),
                      borderColor: Colors.transparent,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return phoneNumberPage();
                          }),
                        );
                      },
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                        title: "SIGN IN",
                        color: Colors.transparent,
                        textColor: Colors.white,
                        borderColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SigninPage();
                          }),
                        );
                        }),
                  ],
                ),

                const SizedBox(height: 10,),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            text: "By signing up for App, you agree to our",
                            children: [
                              TextSpan(
                                text: ' Terms of Service.',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,
                                  decorationColor: Colors.white,
                                  decorationThickness:
                                      1.5, // Adjust the thickness as needed
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            children: [
                              TextSpan(
                                text: "Learn how we process your data in our",
                              ),
                              TextSpan(
                                text: ' Privacy Policy',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,
                                  decorationThickness:
                                      2.5,
                                  decorationColor: Colors.white,                                ),
                              ),
                              TextSpan(
                                text: " and",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Cookies Policy.",
                          style: TextStyle(color: Colors.white,decoration: TextDecoration.underline,decorationColor: Colors.white, fontSize: 12,fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
