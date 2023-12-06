// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Date Picker'),
        ),
        body: CustomDatePicker(),
      ),
    );
  }
}

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
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return 'Invalid Month';
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
                          '${day - 1}',
                          style: TextStyle(
                            color: Colors
                                .grey, // Set the color of the previous day to grey
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
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors
                                  .red, // Add red border to highlight the current day
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '$day',
                            style: TextStyle(
                              color: Colors
                                  .black, // Set the color of the current day text to black
                            ),
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
                          '${day + 1}',
                          style: TextStyle(
                            color: Colors
                                .grey, // Set the color of the next day to grey
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
                      _getMonthName(month +
                          1), // Replace with your function to get month name
                      style: TextStyle(
                        color: Colors
                            .grey, // Set the color of the next month text to grey
                      ),
                    ),
                    SizedBox(height: 4), // Add some vertical spacing
                    Container(
                      padding: EdgeInsets.all(8), // Add padding
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors
                                .red, // Add red border to highlight the current month
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        '$month',
                        style: TextStyle(
                          color: Colors
                              .black, // Set the color of the current month text to black
                        ),
                      ),
                    ),
                    SizedBox(height: 4), // Add some vertical spacing
                    Text(
                      _getMonthName(month -
                          1), // Replace with your function to get month name
                      style: TextStyle(
                        color: Colors
                            .grey, // Set the color of the previous month text to grey
                      ),
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
                      style: TextStyle(
                        color: Colors
                            .grey, // Set the color of the next year text to grey
                      ),
                    ),
                    SizedBox(height: 4),

                    // Add some vertical spacing
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(
                              5) // Add red border to highlight the current year
                          ),
                      child: Text(
                        '$year',
                        style: TextStyle(
                          color: Colors
                              .black, // Set the color of the current year text
                        ),
                      ),
                    ),

                    SizedBox(height: 4),
                    Text(
                      '${year - 1}',
                      style: TextStyle(
                        color: Colors
                            .grey, // Set the color of the previous year text to grey
                      ),
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
