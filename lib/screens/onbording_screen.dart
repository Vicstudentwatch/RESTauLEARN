import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          _buildPage('assets/images/onboarding1.png', 'Discover Recipes'),
          _buildPage('assets/images/onboarding2.png', 'Join Communities'),
          _buildPage('assets/images/onboarding3.png', 'Share Your Experience'),
        ],
      ),
    );
  }

  Widget _buildPage(String imagePath, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        const SizedBox(height: 20),
        Text(text, style: const TextStyle(fontSize: 22)),
      ],
    );
  }
}
