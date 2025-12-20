import 'package:flutter/material.dart';
import 'home_page.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 25, 5, 80),
                Color.fromARGB(255, 65, 15, 140),
              ],
            ),
          ),

          child: HomePage(),
        ),
      ),
    ),
  );
}
