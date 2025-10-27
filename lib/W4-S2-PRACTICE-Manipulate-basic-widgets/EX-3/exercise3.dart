import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: const BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: const Center(
                child: Text(
                  'OOP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: const BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: const Center(
                child: Text(
                  'DART',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade300,
                    Colors.blue.shade600,
                  ],
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: const Center(
                child: Text(
                  'FLUTTER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
