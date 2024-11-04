import 'package:flutter/material.dart';
import 'package:new_project/ready_themes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ihnmaimsColors['despairGray'],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Align(
          alignment: const Alignment(0, 0),
          child: Text(
            'Login',
            style: TextStyle(color: ihnmaimsColors['survivorYellow']),
          ),
        ),
      ),
      body: Stack(
        children: [
          Transform.translate(
            offset: const Offset(5, 150),
            child: SizedBox(
              width: 350,
              child: Form(
                key: _loginKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          loginFormField('Your email', 'Enter your email'),
                      style: TextStyle(color: ihnmaimsColors['survivorYellow']),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please, enter a email.';
                        } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                            .hasMatch(value)) {
                          return 'Please, enter a valid email.';
                        }
                        return null;
                      },
                      obscureText: false,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      decoration: loginFormField(
                          'Your password', 'Enter your password'),
                      style: TextStyle(color: ihnmaimsColors['survivorYellow']),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please, enter a password.';
                        } else if (value.length <= 4) {
                          return 'Please, enter a passoword with more than 4 characters.';
                        }
                        return null;
                      },
                      obscureText: false,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_loginKey.currentState!.validate()) {}
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
