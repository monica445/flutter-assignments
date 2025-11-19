import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

void main() => runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ImageApp()
  ),
);

class ImageApp extends StatefulWidget {
  const ImageApp({super.key});

  @override
  State<ImageApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ImageApp> {

  int currentImageIndex =0;

  void showPrevious () {
    setState(() {
      currentImageIndex = (currentImageIndex - 1 + images.length) % images.length;
    });
  }
  
  void showNext () {
    setState(() {
      currentImageIndex = (currentImageIndex + 1) % images.length;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: showPrevious
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next image',
            onPressed: showNext
          ), 
        ],
      ),
      body: Image.asset( images[currentImageIndex])
    );
  }
}
