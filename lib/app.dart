import 'package:flutter/material.dart';
import 'package:parallax_effect/home_page.dart';

class ParallaxEffectApp extends StatelessWidget {
  const ParallaxEffectApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
