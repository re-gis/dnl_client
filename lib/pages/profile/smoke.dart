// ignore_for_file: camel_case_types, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class smokePage extends StatefulWidget {
  const smokePage({Key? key}) : super(key: key);

  @override
  _smokePageState createState() => _smokePageState();
}

class _smokePageState extends State<smokePage> {
  int _value = 0;

  final title6 = TextStyle(fontSize: 24, fontWeight: FontWeight.w700);
  final text1 = TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold);
  final  visibleText = TextStyle(fontSize: 15,fontWeight: FontWeight.w500);
  bool firstValue = false;

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
            child: Image.asset("assets/icons/cigaratte.png"),
          ),
          const SizedBox(
            height: 15,
          ),
          Text("Do you smoke?",
              style: GoogleFonts.manrope(textStyle: title6)),
          const SizedBox(
            height: 40,
          ),
          Column(
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
                      child: Text("Smoker",
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
                      child: Text("Non Smoker",
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
              const SizedBox(height: 280,),
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
                    ),// Add some spacing between the checkbox and the text
                    Text("Visible on my profile",style: GoogleFonts.manrope(textStyle: visibleText),),
                  ],
                ),
            ],
          )
        ],
      ),
    );
  }
}
