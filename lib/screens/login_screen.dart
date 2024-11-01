import 'package:flutter/material.dart';
import 'package:new_project/screens/custom_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Form(
            child: Column(
              children: [
                LoginCustomTextField(
              icon: const Icon(Icons.account_circle_sharp,
                  size: 35,),
              keyboardType: TextInputType.text,
              hintText: 'Insira seu nome',
              labelText: 'Seu nome',
              obscureText: false,
            ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
