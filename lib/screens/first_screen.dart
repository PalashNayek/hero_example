import 'package:flutter/material.dart';
import 'package:hero_example/screens/second_screen.dart';

import '../di/setup_locator.dart';
import '../view_models/hero_view_model.dart';


class FirstScreen extends StatelessWidget {
  final HeroViewModel viewModel = getIt<HeroViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Animation Example')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Hero(
            tag: 'hero-tag',
            child: Image.network(
              viewModel.imageUrl,
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
