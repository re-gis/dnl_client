// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CountryPicker extends StatelessWidget {
  const CountryPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Padding(padding: EdgeInsets.all(20),
      // child: Padding(
      //   padding: EdgeInsets.all(8),
      //   child: IntlPhoneField(
      //     decoration: const InputDecoration(
      //       labelText: 'Phone number'
      //     ),
      //     initialCountryCode: 'US',
      //   ),
      // )
      // ),
      padding: EdgeInsets.all(20),
      child: IntlPhoneField(
        decoration: const InputDecoration(
          labelText: 'Phone number'
        ),initialCountryCode: 'US',
      ),
    );
  }
}
