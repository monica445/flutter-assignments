import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "Hello my name is Monica !",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 40,
            ),
          ),
        ),
      ),
    ),
  );
}
