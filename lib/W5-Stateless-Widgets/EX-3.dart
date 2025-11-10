import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}

enum Product{
  dart('Dart', 'the best object language', 'assets/w5/ex3/dart.png'),
  flutter('Flutte', 'the best mobile widget today', 'assets/w5/ex3/flutter.png'),
  firebase('Firebase', 'the best cloud database', 'assets/w5/ex3/firebase.png');

  final String title;
  final String description;
  final String image;

  const Product(this.title, this.description, this.image);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(title: const Text('Products')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProductCard(product: Product.dart),
              SizedBox(height: 20),
              ProductCard(product: Product.flutter),
              SizedBox(height: 20),
              ProductCard(product: Product.firebase)
            ],
          ),
        )
      )
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return
      Card(
        elevation: 4,
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                product.image, 
                width: 80, 
                height: 80
              ),
              const SizedBox(height: 5),
              Text(
                product.title,
                style: const TextStyle(fontSize: 30)
              ),
              const SizedBox(height: 5),
              Text(
                product.description,
                style: const TextStyle(fontSize: 10)
              ),
            ],
          )
        )
      );
  }
}