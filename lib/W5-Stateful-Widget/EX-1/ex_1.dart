import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp() 
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stateful Widget - Button")),
      body: Center(
        child: Column(
          children: [
            Button(),
            const SizedBox(height: 15),
            Button(),
            const SizedBox(height: 15),
            Button(),
            const SizedBox(height: 15),
            Button(),
            const SizedBox(height: 15),
          ],
        )
      )
    )
    ;
  }
}

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Button> {
  bool isSelected = false;

  Color get backgroundColor => isSelected ? Colors.blue.shade500 : Colors.blue.shade50;
  Color get textColor => isSelected? Colors.white : Colors.black;
  String get buttonText => isSelected? "Selected" : "Not Selected";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: () => { 
          setState(() {
            isSelected = !isSelected;
          }) 
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: textColor,
              fontSize: 18
            ),
          ),
        ),
      ),
    );
  }
}
