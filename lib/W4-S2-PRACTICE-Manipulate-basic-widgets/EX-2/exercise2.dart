import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        margin: const EdgeInsets.all(50),
        padding: const EdgeInsets.all(40),
        color: Colors.blue[300],
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: const Center(
            child: Text(
              'CADT STUDENTS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
