// ignore_for_file: unnecessary_import, file_names, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors

import 'package:dnl_ui/components/datePicker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BirthDay extends StatefulWidget {
  BirthDay({Key? key}) : super(key: key);

  @override
  _BirthDayState createState() => _BirthDayState();
}

class _BirthDayState extends State<BirthDay> {
  final title6 = TextStyle(fontSize: 24, fontWeight: FontWeight.w700);
  final text1 = TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold);
  final ageText = TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  final valueText = TextStyle(fontSize: 43, fontWeight: FontWeight.bold);
  final lookingText = TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
  bool firstValue = false;
  final visibleText = TextStyle(fontSize: 15, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
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
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset("assets/icons/bd.png"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Birthday and zodiac sign",
                    style: GoogleFonts.manrope(textStyle: title6),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [CustomDatePicker()],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[100],
                                  ),
                                  height: 300,
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Your age:",
                                          style: GoogleFonts.manrope(
                                              textStyle: ageText),
                                        ),
                                        Text(
                                          "26",
                                          style: GoogleFonts.manrope(
                                              textStyle: valueText),
                                        ),
                                        Text(
                                          "It looks like you are a Gemini.",
                                          style: GoogleFonts.manrope(
                                              textStyle: lookingText),
                                        ),
                                        Container(
                                          height: 167,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 20.0),
                                          child: Image.asset(
                                            "assets/zodiac/starter_lang.png",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          left: 15,
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              children: [
                Checkbox(
                  value: firstValue,
                  onChanged: (value) {
                    setState(() {
                      firstValue = value!;
                    });
                  },
                  activeColor: firstValue ? Colors.red : Colors.transparent,
                ),
                Text(
                  "Visible on my profile",
                  style: GoogleFonts.manrope(textStyle: visibleText),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
