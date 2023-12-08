// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrinkPage extends StatefulWidget {
  const DrinkPage({Key? key}) : super(key: key);

  @override
  _DrinkPageState createState() => _DrinkPageState();
}

class _DrinkPageState extends State<DrinkPage> {
  int _value = 0;
  bool firstValue = false;

  final title6 = TextStyle(fontSize: 24, fontWeight: FontWeight.w700);
  final text1 = TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold);
  final visibleText = TextStyle(fontSize: 15, fontWeight: FontWeight.w500);
  final textt = TextStyle(fontSize: 16,fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
              child: Image.asset("assets/icons/glass.png"),
            ),
            const SizedBox(
              height: 15,
            ),
            Text("Do you drink?", style: GoogleFonts.manrope(textStyle: title6)),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Column(
                children: [

                  Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Yes",
                          style: GoogleFonts.manrope(textStyle: text1)),
                    ),
                    Radio<int>(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.red; // Color when selected
                          }
                          return Colors.grey; // Color when not selected
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Sometimes",
                          style: GoogleFonts.manrope(textStyle: text1)),
                    ),
                    Radio<int>(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.red; // Color when selected
                          }
                          return Colors.grey; // Color when not selected
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Never",
                          style: GoogleFonts.manrope(textStyle: text1)),
                    ),
                    Radio<int>(
                      value: 3,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.red; // Color when selected
                          }
                          return Colors.grey; // Color when not selected
                        },
                      ),
                    ),
                  ],
                ),
              ),
                  // ... Your existing widgets

                  // Preferable drink
                  Visibility(
                    visible: _value == 1, // Show only when "Yes" is selected
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:30.0),
                              child: Text("Preferable drink?", textAlign: TextAlign.start,style: GoogleFonts.manrope(textStyle: textt)),
                            ),
                            SizedBox(height: 10,), 
                            Container( 
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              width: 383,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text("Beer", textAlign: TextAlign.start, style: GoogleFonts.manrope(textStyle: text1)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Spacer to push the following row to the bottom
                  Spacer(),

                  // Checkbox at the bottom
                  Row(
                    children: [
                      Checkbox(
                        value: firstValue,
                        onChanged: (value) {
                          setState(() {
                            firstValue = value!;
                          });
                        },
                        activeColor: firstValue ? Color(0xFFE94057) : Colors.transparent,
                      ),
                      // Add some spacing between the checkbox and the text
                      Text("Visible on my profile", style: GoogleFonts.manrope(textStyle: visibleText),),
                    ],
                  ),
                  const SizedBox(height: 15,),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
