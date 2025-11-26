import '../data/joke_data.dart';
import 'package:flutter/material.dart';
import '../model/joke_model.dart';

class FavoriteJokeApp  extends StatefulWidget {
  final List<FavoriteJoke> jokes;
  const FavoriteJokeApp ({super.key, required this.jokes});

  @override
  State<FavoriteJokeApp > createState() => _FavoriteJokeAppState();
}

class _FavoriteJokeAppState extends State<FavoriteJokeApp > {
  int? favoriteIndex;

  void onFavoriteSelect(int index) {
    setState(() {
      favoriteIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Favorite Jokes')
      ),
      body: ListView.builder(
        itemCount: jokes.length,
        itemBuilder: (context, index){
          final joke = widget.jokes[index];
          return FavoriteJokeCard(
            title: joke.title, 
            description: joke.description, 
            isFavorite: favoriteIndex == index, 
            onFavoriteSelect: () => onFavoriteSelect(index)
          );
        },
      )
    );
  }
}

class FavoriteJokeCard extends StatelessWidget {
  final String title;
  final String description;
  final bool isFavorite;
  final VoidCallback onFavoriteSelect;

  const FavoriteJokeCard({
    super.key,
    required this.title,
    required this.description,
    required this.isFavorite,
    required this.onFavoriteSelect
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: .5, color: Colors.grey),
          ),
        ),
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.greenAccent, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 10.0),
                  Text(description)
                ],
              ),
            ),
            IconButton(
                onPressed: onFavoriteSelect,
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.grey,
                ))
          ],
        ),
      );
  }
}
