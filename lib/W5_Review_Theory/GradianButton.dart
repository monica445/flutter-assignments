import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              GradiantButton(text: "hello 1", start: Colors.blue , end: Colors.red),
              GradiantButton(text: "hello 2", start: Colors.blue , end: Colors.red),
              GradiantButton(text: "hello 3", start: Colors.blue , end: Colors.red)
            ],
          ),
        ),
      ),
    ),
  );
}

class GradiantButton extends StatelessWidget {
  const GradiantButton({super.key, required this.text, required this.start, required this.end});

  final String text;
  final Color start;
  final Color end;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: [start, end],
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}