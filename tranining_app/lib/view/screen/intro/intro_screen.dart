import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../home/home_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final _introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomeScreen()),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showNextButton: false,
      showDoneButton: true,
      onDone: () => _onIntroEnd(context),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      key: _introKey,
      globalBackgroundColor: const Color.fromRGBO(229, 238, 243, 1),
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: TextButton(
              onPressed: () => _onIntroEnd(context),
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: 'Welcome to the app',
          body: 'This is a description of the app',
          image: _buildImage('illustration/login.jpg'),
          decoration: const PageDecoration(
            pageColor: Color.fromRGBO(229, 238, 243, 1),
          ),
        ),
        PageViewModel(
          title: 'Find Your Favorite Lesson',
          body: 'This is a description of the app',
          image: _buildImage('illustration/login.jpg'),
          decoration: const PageDecoration(
            pageColor: Color.fromRGBO(229, 238, 243, 1),
          ),
        ),
        PageViewModel(
          title: 'Welcome to the app',
          body: 'This is a description of the app',
          image: _buildImage('illustration/login.jpg'),
          decoration: const PageDecoration(
            pageColor: Color.fromRGBO(229, 238, 243, 1),
          ),
        ),
        PageViewModel(
          title: 'Welcome to the app',
          body: 'This is a description of the app',
          image: _buildImage('illustration/login.jpg'),
          decoration: const PageDecoration(
            pageColor: Color.fromRGBO(229, 238, 243, 1),
          ),
        ),
      ],
    );
  }
}
