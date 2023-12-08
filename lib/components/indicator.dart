// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final int itemCount;
  final int currentPage;
  final ValueChanged<int> onPageChanged;

  DotIndicator({
    required this.itemCount,
    required this.currentPage,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return _createIndicatorElement(index);
        },
      ),
    );
  }

  Widget _createIndicatorElement(int index) {
    double size = (currentPage == index) ? 10 : 8;
    Color color = (currentPage == index) ? Colors.pink : (Colors.pink[50] ?? Color(0xFFFB685E));

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3), // Adjust the padding as needed
      child: Container(
        width: 21,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), // Adjust the border radius as needed
          color: color,
        ),
      ),
    );
  }
}
