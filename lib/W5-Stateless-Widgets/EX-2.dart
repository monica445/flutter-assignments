import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
  disable
}

enum Position {
  left,
  right
}

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom Buttons')),
        backgroundColor: const Color.fromARGB(255, 242, 242, 242),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomButton( icon: Icons.check, label: 'Submit'),
             
              SizedBox(height: 10),

              CustomButton( icon: Icons.timer_outlined, label: 'Time', iconPosition: Position.right, buttonType: ButtonType.secondary),
              
              SizedBox(height: 10),
              
              CustomButton( icon: Icons.account_tree_rounded, label: 'Account', iconPosition: Position.right, buttonType: ButtonType.disable),
            ],
          ),
        ),
      ),
    );
  }
}

Color getColorByButtonType(ButtonType type) {
  switch (type) {
    case ButtonType.primary:
      return Colors.blue;
    case ButtonType.secondary:
      return Colors.green;
    case ButtonType.disable:
      return Colors.grey;
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Position? iconPosition;
  final ButtonType? buttonType;

  const CustomButton({
    super.key, 
    required this.label, 
    required this.icon, 
    this.iconPosition = Position.left, 
    this.buttonType = ButtonType.primary
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: getColorByButtonType(buttonType!),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: iconPosition == Position.left
          ? [Icon(icon), const SizedBox(width: 15), Text(label)]
          : [Text (label), const SizedBox(width: 15), Icon(icon)]
      ),
    );
  }
}