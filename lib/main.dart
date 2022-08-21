import 'package:flutter/material.dart';
import 'package:smart_attendance/screen/home.dart';
import 'package:smart_attendance/screen/loginscreen.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/" :(context) => Login(),
      "/home" :(context) => HomePage()
    },
  ));
}

