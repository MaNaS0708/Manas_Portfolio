import 'package:flutter/material.dart';
import '../home/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: const Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}