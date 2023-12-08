// ignore_for_file: must_be_immutable, unnecessary_import, file_names, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RelationPage extends StatefulWidget {
  RelationPage({Key? key}) : super(key: key);

  int _value = 0;

  final title6 = TextStyle(fontSize: 22, fontWeight: FontWeight.w700);
  final text1 = TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold);
  final visibleText = TextStyle(fontSize: 15, fontWeight: FontWeight.w500);
  bool firstValue = false;

  @override
  State<RelationPage> createState() => _RelationPageState();
}

class _RelationPageState extends State<RelationPage> {
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
            child: Image.asset("assets/icons/hearts.png"),
          ),
          const SizedBox(
            height: 15,
          ),
          Text("What is your relationship status?",
              style: GoogleFonts.manrope(textStyle: widget.title6)),
          const SizedBox(
            height: 30,
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
                      child: Text("Single",
                          style: GoogleFonts.manrope(textStyle: widget.text1)),
                    ),
                    Radio<int>(
                      value: 1,
                      groupValue: widget._value,
                      onChanged: (value) {
                        setState(() {
                          widget._value = value!;
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
                      child: Text("In relationship",
                          style: GoogleFonts.manrope(textStyle: widget.text1)),
                    ),
                    Radio<int>(
                      value: 2,
                      groupValue: widget._value,
                      onChanged: (value) {
                        setState(() {
                          widget._value = value!;
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
              const SizedBox(height:30),
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
                        child: Text("Married",
                            style: GoogleFonts.manrope(textStyle: widget.text1)),
                      ),
                      Radio<int>(
                        value: 3,
                        groupValue: widget._value,
                        onChanged: (value) {
                          setState(() {
                            widget._value = value!;
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
                const SizedBox(height: 30,),
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
                        child: Text("Complicated",
                            style: GoogleFonts.manrope(textStyle: widget.text1)),
                      ),
                      Radio<int>(
                        value: 4,
                        groupValue: widget._value,
                        onChanged: (value) {
                          setState(() {
                            widget._value = value!;
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
                height: 90,
              ),
              
              Row(
                children: [
                  Checkbox(
                    value: widget.firstValue,
                    onChanged: (value) {
                      setState(() {
                        widget.firstValue = value!;
                      });
                    },
                    activeColor:
                        widget.firstValue ? Color(0xFFE94057) : Colors.transparent,
                  ), // Add some spacing between the checkbox and the text
                  Text("Visible on my profile",
                      style: GoogleFonts.manrope(textStyle: widget.visibleText)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
