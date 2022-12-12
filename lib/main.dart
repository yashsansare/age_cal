import 'dart:js';
import 'package:age_cal/age.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        routes:{
          '/':(context)=>ageCalc(),
        }
    ),
  );
}