import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SearchTitle extends StatelessWidget {
  const SearchTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          'SEARCH',
          textStyle: const TextStyle(
            fontSize: 32,
            color: Colors.black,
            shadows: [Shadow(color: Colors.black54, blurRadius: 1)],
            height: 2,
            fontWeight: FontWeight.w300,
          ),
          speed: const Duration(milliseconds: 200),
        ),
      ],
      totalRepeatCount: 1,
      pause: const Duration(milliseconds: 1000),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }
}
