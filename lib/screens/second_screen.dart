import 'package:flutter/material.dart';

import '../di/setup_locator.dart';
import '../view_models/hero_view_model.dart';


class SecondScreen extends StatelessWidget {
  final HeroViewModel viewModel = getIt<HeroViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Detail View')),
      body: Center(
        child: Hero(
          tag: 'hero-tag',
          child: Image.network(
            viewModel.imageUrl,
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}
