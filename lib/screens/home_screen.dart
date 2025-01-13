import 'package:fl_damfix/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DAMFLIX'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [CardSwiper(), MovieSlider()],
          ),
        ));
  }
}
