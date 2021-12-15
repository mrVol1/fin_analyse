import 'package:fin_analyse/views/home_page.dart';
import 'package:fin_analyse/views/preloader.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginWidget();
  }
}

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        leading: GestureDetector(
          onTap: () {
            _navigateToHomerScreen(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text('Login'),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'User@example.com',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: SizedBox(
              width: 378,
              height: 54,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  _homePageScreen(context);
                },
                child: const Text('NEXT'),
              ),
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

void _navigateToHomerScreen(BuildContext context) {
  Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => const PreloaderScreen()));
}
