import 'package:flutter/material.dart';

final List<Color> greenShades = [
  Color(0xFFE8F8EF),
  Color(0xFFD0F2DF),
  Color(0xFFB8ECCD),
  Color(0xFFA0E5BC),
  Color(0xFF88DEA9),
  Color(0xFF6FD895),
  Color(0xFF55D080),
  Color(0xFF3CC86B),
  Color(0xFF22BF55),
  Color(0xFF07B641), 
];


void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 149, 183, 157),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ScoreCard(title: "My score in Flutter"),
            const SizedBox(height: 20),
            ScoreCard(title: "My score in Dart"),
            const SizedBox(height: 20),
            ScoreCard(title: "My score in React"),
            const SizedBox(height: 20),
          ],
        ),  
      ),
    );
  }
}

class ScoreCard extends StatefulWidget {
  final String title;
  const ScoreCard({super.key, required this.title});

  @override
  State<ScoreCard> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ScoreCard> {
  int score = 0;

  int get colorIndex => ( score == 0? 0 : score -1);

  void onIncrease (){
    if(score < 10) {
      setState(() {
        score = score + 1;
      });
    }
  }
  void onDecrease (){
    if(score > 0) {
      setState(() {
        score = score - 1;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              widget.title,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: onDecrease, 
                  icon: const Icon(Icons.remove),
                  tooltip: 'Decrease Score',
                ),
                const SizedBox(width: 60),
                IconButton(
                  onPressed: onIncrease, 
                  icon: const Icon(Icons.add),
                  tooltip: 'Increase Score',
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color.fromARGB(255, 203, 202, 202),
                      width: 1
                    )
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: score / 10,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: greenShades[colorIndex], 
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                )
              ],
            )
          ],
        )
      )
    );
  }
}