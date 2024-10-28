import 'package:flutter/material.dart';
import 'package:new_project/ready_themes.dart';
import 'package:new_project/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: amLightThemeStyleData,
      debugShowCheckedModeBanner: false,
      initialRoute: '/ProfileScreen',
      routes: {
        '/ProfileScreen': (context) => const MainScreen(),
      },
    );
  }
}
