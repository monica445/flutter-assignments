import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            CustomCard(text: 'OOP', color: Colors.blue[100]!),
            CustomCard(text: 'DART', color: Colors.blue[300]!),
            CustomCard(
              text: 'FLUTTER',
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade300,
                  Colors.blue.shade600,
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

class CustomCard  extends StatelessWidget {
  final String text;
  final Color color;
  final LinearGradient? gradient; //gradient is optional

  const CustomCard ({super.key, required this.text, this.color = Colors.blue, this.gradient});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: gradient == null ? color : null, //if gradient is not provided, use color,
        gradient: gradient, //else, use gradient
        borderRadius: const BorderRadius.all(Radius.circular(40)),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
} 
