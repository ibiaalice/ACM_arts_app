import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFFCD2545).withOpacity(0.9),
            shape: BoxShape.rectangle,
            border: Border.all(width: 2)),
        width: 300,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'ART \n INSTITVTE \n CHICAGO',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      color: Colors.white,
                      shadows: [Shadow(color: Colors.black54, blurRadius: 30)],
                      height: 2,
                      fontWeight: FontWeight.w300,
                    ),
                    speed: const Duration(milliseconds: 300),
                  ),
                ],
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
