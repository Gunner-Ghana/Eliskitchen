import 'package:flutter/material.dart';
import 'package:eliskitchen/pages/HomePage.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
    debugShowCheckedModeBanner: false,
  ));
}
