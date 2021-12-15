import 'package:fin_analyse/views/home_page.dart';
import 'package:fin_analyse/views/register.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SignUpWidget();
  }
}

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        leading: GestureDetector(
          onTap: () {
            _navigateToRegisterScreen(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text('Register'),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'the_james',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              width: 378,
              height: 54,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  _homePageScreen(context);
                },
                child: const Text('SIGN UP'),
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 34),
            // ignore: prefer_const_constructors
            child: Text.rich(
              const TextSpan(
                  text: 'By signing up, you agree to Photo’s ',
                  children: [
                    TextSpan(
                      text: 'Terms of Service and Privacy Policy.',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

void _homePageScreen(BuildContext context) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => const HomeScreen()));
}

void _navigateToRegisterScreen(BuildContext context) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => const RegisterPage()));
}
