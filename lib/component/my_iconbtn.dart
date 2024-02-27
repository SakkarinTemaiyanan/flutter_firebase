import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
    final String imagePath;
  
    @override
    Widget build(BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.blue.shade100,
      ),
      child: Image.asset(
        imagePath,
        height: 40,
        
      ),

      );
    }
  }
