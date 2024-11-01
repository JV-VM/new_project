import 'package:flutter/material.dart';
import 'package:new_project/screens/catalogue_screen.dart';
import 'package:new_project/screens/login_screen.dart';
import 'package:new_project/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/LoginScreen',
      routes: {
        '/LoginScreen': (context) => const LoginScreen(),
        '/ProfileScreen': (context) => const ProfileScreen(),
        '/CatalogueScreen': (context) => const CatalogueScreen(),
      },
    );
  }
}
