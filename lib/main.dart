import 'package:flutter/material.dart';
import 'package:food_connect/screens/splash_screen.dart';

void main() {
  runApp(const REStauLEARNApp());
}

class REStauLEARNApp extends StatelessWidget {
  const REStauLEARNApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // Hide debug banner
      title: 'REStauLEARN',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color.fromARGB(255, 234, 142, 71)),
      ),
      home: const SplashScreen(),
    );
  }
}
