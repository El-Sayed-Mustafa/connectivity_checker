import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedIntroText extends StatelessWidget {
  const AnimatedIntroText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 200,
          width: 200,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile.jpeg'),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Hello!',
              textStyle: const TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 100),
              textAlign: TextAlign.center,
            ),
            TypewriterAnimatedText(
              'My name is \n Elsayed Mustafa ',
              textStyle: const TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 100),
              textAlign: TextAlign.center,
            ),
            TypewriterAnimatedText(
              'And',
              textStyle: const TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 100),
              textAlign: TextAlign.center,
            ),
            TypewriterAnimatedText(
              'I\'m ',
              textStyle: const TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 100),
              textAlign: TextAlign.center,
            ),
            TypewriterAnimatedText(
              'Flutter Developer',
              textStyle: const TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
              speed: const Duration(milliseconds: 100),
              textAlign: TextAlign.center,
            ),
          ],
          totalRepeatCount: 4,
          pause: const Duration(milliseconds: 100),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
      ],
    );
  }
}
