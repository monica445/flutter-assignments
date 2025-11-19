import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: const Text("Favorite cards"),
    ),
    body: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Card(),
          const SizedBox(height: 15),
          Card(),
          const SizedBox(height: 15),
          Card(),
          const SizedBox(height: 15),
        ],
      ),
    )
  ),
));

class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Card> {
  bool isFavorite = false;

  Color get heartColor => isFavorite? Colors.red : Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.grey)
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "title",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18
                    ),
                  ),
                  Text(
                    "description",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12
                    ),
                  )
                ],
              )
            ),
            IconButton(
              onPressed: () => {
                setState(() {
                  isFavorite = !isFavorite;
                })
              }, 
              icon: Icon(
                Icons.favorite ,
                color: heartColor,
                size: 28,
              )
            )
          ],
        )
      )
    );
  }
}
