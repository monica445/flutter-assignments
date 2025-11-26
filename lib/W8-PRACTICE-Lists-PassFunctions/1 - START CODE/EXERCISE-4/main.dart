import 'package:flutter/material.dart';
import 'ui/favorite_joke_ui.dart';
import 'data/joke_data.dart';


void main() => runApp(MaterialApp(
      home: FavoriteJokeApp(jokes: jokes)
    ));

