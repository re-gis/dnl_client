// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDatePicker extends StatefulWidget {
  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  int day = 1;
  int month = 1;
  int year = DateTime.now().year;

  void updateDay(int value) {
    setState(() {
      if (value > 0 && value < 32) {
        day = value;
      } else if (value >= 32) {
        day = 31;
      } else {
        day = 1;
      }
    });
  }

  String _getMonthName(int month) {
    switch (month) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'Aug';
      case 9:
        return 'Sept';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
      default:
        return 'Jan';
    }
  }

  void updateMonth(int value) {
    setState(() {
      if (value > 0 && value < 13) {
        month = value;
      } else if (value >= 13) {
        month = 12;
      } else {
        month = 1;
      }
    });
  }

  void updateYear(int value) {
    setState(() {
      year = value;
    });
  }

  final text7 = TextStyle(fontSize: 22, fontWeight: FontWeight.w600);
  final monthText = TextStyle(
      fontSize: 22, fontWeight: FontWeight.w600, color: Colors.red[100]);
  final monthText1 = TextStyle(
      fontSize: 22, fontWeight: FontWeight.w600, color: Colors.red[30]);
  final text8 = TextStyle(
      fontSize: 22, fontWeight: FontWeight.w600, color: Colors.grey[300]);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width - 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            updateDay(day + 1);
                          },
                          child: Image.asset(
                            'assets/icons/up.png',
                            height: 24,
                          ), // Replace with the path to your up arrow image
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${day + 1}',
                          style: GoogleFonts.manrope(textStyle: text8),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors
                                  .red, // Add red border to highlight the current day
                                  width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            '$day',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.manrope(textStyle: text7),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${day - 1}',
                          style: GoogleFonts.manrope(textStyle: text8),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            updateDay(day - 1);
                          },
                          child: Image.asset('assets/icons/down.png',
                              height:
                                  24), // Replace with the path to your down arrow image
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        updateMonth(month + 1);
                      },
                      child: Image.asset(
                        'assets/icons/up.png',
                        height: 24,
                      ), // Replace the path with your up arrow image
                    ),
                    SizedBox(height: 4), // some vertical spacing
                    Text(
                      _getMonthName(month + 1),
                      style: GoogleFonts.manrope(textStyle: monthText),
                    ),
                    SizedBox(height: 10), // Add some vertical spacing
                    Container(
                      width: 100,
                      padding: EdgeInsets.all(8), // Add padding
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors
                                .red, // Add red border to highlight the current month
                                width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        _getMonthName(month),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.manrope(textStyle: monthText1),
                      ),
                    ),
                    SizedBox(height: 4), // Add some vertical spacing
                    Text(
                      _getMonthName(month -
                          1), // Replace with your function to get month name
                      style: GoogleFonts.manrope(textStyle: monthText),
                    ),
                    SizedBox(height: 10), // Add some vertical spacing
                    GestureDetector(
                      onTap: () {
                        updateMonth(month - 1);
                      },
                      child: Image.asset(
                        'assets/icons/down.png',
                        height: 24,
                      ), // Replace with the path to your down arrow image
                    ),
                    SizedBox(height: 16), // Add more vertical spacing
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        updateYear(year + 1);
                      },
                      child: Image.asset(
                        'assets/icons/up.png', // Replace with your image asset
                        height: 24, // Adjust the height as needed
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${year + 1}',
                      style: GoogleFonts.manrope(textStyle: text8),
                    ),
                    SizedBox(height: 4),
    
                    // Add some vertical spacing
                    Container(
                      width: 100,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red,width: 2.0,),
                          borderRadius: BorderRadius.circular(
                              12) // Add red border to highlight the current year
                          ),
                      child: Text(
                        '$year',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.manrope(textStyle: text7),
                      ),
                    ),
    
                    SizedBox(height: 4),
                    Text(
                      '${year - 1}',
                      style: GoogleFonts.manrope(textStyle: text8),
                    ), // Add some vertical spacing
                    SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {
                        updateYear(year - 1);
                      },
                      child: Image.asset(
                        'assets/icons/down.png', // Replace with your image asset
                        height: 24, // Adjust the height as needed
                      ),
                    ),
                    SizedBox(height: 16), // Add more vertical spacing
                  ],
                ),
              )
            ],
          ),
        ),
        // Text('Selected Date: $day/$month/$year'),
      ],
    );
  }
}
