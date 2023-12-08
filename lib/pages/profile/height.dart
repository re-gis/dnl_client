// ignore_for_file: prefer_const_constructors, duplicate_ignore

import "package:flutter/cupertino.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

enum Physical { petite, curvy, athletic, average, preferNotToSay, none }

class ProfilePhysical extends StatefulWidget {
  const ProfilePhysical({super.key});
  @override
  State<ProfilePhysical> createState() => _ProfilePhysicalState();
}

class _ProfilePhysicalState extends State<ProfilePhysical> {
  // ignore: prefer_const_constructors
  final title6 = TextStyle(fontSize: 24, fontWeight: FontWeight.w700);
  final text1 = TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold);
  final visibleText = TextStyle(fontSize: 15, fontWeight: FontWeight.w500);
  bool firstValue = false;
  final List<String> physicalLabels = [
    "Petite",
    "Curvy",
    "Athletic",
    "Average",
    "Prefer not to say"
  ];
  Physical physical = Physical.petite;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: Colors.transparent),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/height.svg"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Height and body type?",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height - 340,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 210,
                        child: CupertinoPicker(
                            itemExtent: 64,
                            selectionOverlay:
                                const CupertinoPickerDefaultSelectionOverlay(
                              background: Colors.transparent,
                            ),
                            onSelectedItemChanged: (value) {},
                            scrollController:
                                FixedExtentScrollController(initialItem: 1),
                            children: [
                              ...List.generate(
                                20,
                                (index) => const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 7),
                                  child: Text(
                                    "5' 8'' (68 inch)",
                                    style: TextStyle(
                                        color: Color(0xffACADAF), fontSize: 28),
                                  ),
                                ),
                              )
                            ]),
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                physical = Physical.petite;
                              });
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xffDDDDDD),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Petite",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Radio(
                                    value: Physical.petite,
                                    groupValue: physical,
                                    activeColor: const Color(0xffE94057),
                                    onChanged: (value) {
                                      setState(() {
                                        physical = value!;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                physical = Physical.curvy;
                              });
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xffDDDDDD),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Curvy",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Radio(
                                    value: Physical.curvy,
                                    groupValue: physical,
                                    activeColor: const Color(0xffE94057),
                                    onChanged: (value) {
                                      setState(() {
                                        physical = value!;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                physical = Physical.athletic;
                              });
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xffDDDDDD),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Athletic",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Radio(
                                    value: Physical.athletic,
                                    groupValue: physical,
                                    activeColor: const Color(0xffE94057),
                                    onChanged: (value) {
                                      setState(() {
                                        physical = value!;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                physical = Physical.average;
                              });
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xffDDDDDD),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Average",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Radio(
                                    value: Physical.average,
                                    groupValue: physical,
                                    activeColor: const Color(0xffE94057),
                                    onChanged: (value) {
                                      setState(() {
                                        physical = value!;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                physical = Physical.preferNotToSay;
                              });
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xffDDDDDD),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Prefer not to say",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Radio(
                                    value: Physical.preferNotToSay,
                                    groupValue: physical,
                                    activeColor: const Color(0xffE94057),
                                    onChanged: (value) {
                                      setState(() {
                                        physical = value!;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 20,
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
                      activeColor:
                          firstValue ? Color(0xFFE94057) : Colors.transparent,
                    ),
                    Text(
                      "Visible on my profile",
                      style: GoogleFonts.manrope(textStyle: visibleText),
                    ),
                  ],
                ),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
