import 'package:flutter/material.dart';
import 'header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const header(),
        ],
      ),
    );
  }
}
