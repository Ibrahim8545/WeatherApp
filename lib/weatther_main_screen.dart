import 'package:flutter/material.dart';

class weatherMain  extends StatelessWidget {
  const weatherMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text(
        'Weather app',
      ),
      ),
    );
  }
}