import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class birthDay extends StatelessWidget {
  birthDay({super.key});

  final title6 = TextStyle(fontSize: 24,fontWeight: FontWeight.w700);
  final text1 = TextStyle( fontSize: 17.0,fontWeight: FontWeight.bold);
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
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
            child: Image.asset("assets/icons/bd.png"),
          ),
          const SizedBox(height: 15,),
          Text("Birthday and zodiac sign",style: GoogleFonts.manrope(textStyle: title6),),
          const SizedBox(height: 40,),

          Column(
            children: [
              Container(

              )
            ],
          )
        ],
      );
  }
}
