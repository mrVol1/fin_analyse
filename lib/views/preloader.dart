import 'package:fin_analyse/views/login.dart';
import 'package:fin_analyse/views/register.dart';
import 'package:flutter/material.dart';

class PreloaderScreen extends StatelessWidget {
  const PreloaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'images/XeniosCoin (XNC).png',
              height: 68,
              width: 68,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 24),
            child: Text(
              'FINANCE ANALYSE',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 180,
              height: 52,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  _navigateToRegisterScreen(context);
                },
                child: const Text('Register'),
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 12)),
            SizedBox(
              width: 180,
              height: 52,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  _loginScreen(context);
                },
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _loginScreen(BuildContext context) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => const LoginPage()));
}

void _navigateToRegisterScreen(BuildContext context) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => const RegisterPage()));
}
