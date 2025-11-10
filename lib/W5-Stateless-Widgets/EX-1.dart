import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My Hobbies')),
        backgroundColor: const Color.fromARGB(255, 174, 174, 174),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HobbyCard( icon: Icons.travel_explore, title: 'Travelling', color: Colors.green),
             
              SizedBox(height: 10),

              HobbyCard( icon: Icons.skateboarding, title: 'Skating', color: Colors.blueGrey),
              
              SizedBox(height: 10),
              
              HobbyCard(icon: Icons.book, title: 'Reading'),
            ],
          ),
        ),
      ),
    );
  }
}

class HobbyCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? color; //color is optional
  
  const HobbyCard({
    super.key,
    required this.icon,
    required this.title,
    this.color = Colors.blue, //default color is blue
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 25),
            const SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
