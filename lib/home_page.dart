// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:parallax_effect/gen/assets.gen.dart';
import 'package:parallax_effect/widget/anime_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const animeImages = [
  Assets.a1,
  Assets.a2,
  Assets.a3,
  Assets.a4,
  Assets.a5,
  Assets.a6
];
int currentIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: PageView.builder(
              onPageChanged: (value) => setState(() {
                currentIndex = value;
              }),
              itemCount: animeImages.length,
              itemBuilder: (context, index) => AnimeCard(
                imagePath: animeImages[index].path,
                isSelected: currentIndex == index,
              ),
            ),
          )
        ],
      ),
    );
  }
}
