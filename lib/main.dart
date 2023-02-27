import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tablenew/home.dart';
import 'package:tablenew/user.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => UserInput(),
        'output':(context) => Homescreen(),
      },
    ),
  );
}