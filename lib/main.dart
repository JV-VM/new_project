import 'package:flutter/material.dart';
import 'package:new_project/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'MainScreen',
      routes: {
        'MainScreen': (context) => const MainScreen(),
      },
    );
  }
}
