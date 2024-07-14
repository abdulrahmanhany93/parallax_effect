import 'package:flutter/material.dart';
import 'package:parallax_effect/animation/parallax_flow_delegate.dart';

class AnimeCard extends StatefulWidget {
  const AnimeCard({
    super.key,
    required this.imagePath,
    required this.isSelected,
  });
  final String imagePath;
  final bool isSelected;
  @override
  State<AnimeCard> createState() => _AnimeCardState();
}

class _AnimeCardState extends State<AnimeCard> {
  final GlobalKey globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Durations.long2,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.symmetric(
          horizontal: 20, vertical: widget.isSelected ? 10 : 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(0, 6),
                blurRadius: 8)
          ]),
      child: Flow(
        delegate: ParallaxFlowDelegate(
            scrollable: Scrollable.of(context),
            listItemContext: context,
            backgroundImageKey: globalKey),
        children: [
          Image.asset(
            key: globalKey,
            widget.imagePath,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
