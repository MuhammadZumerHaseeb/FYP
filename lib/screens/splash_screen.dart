import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key}); // Class Constuctor

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // "The initState() method is a special lifecycle method in Flutter used for initializing stateful widgets.
    super
        .initState(); // super.initState(); is a call that ensures the base class's initState() is executed.
    _navigateToHome(); //  is a custom function likely responsible for navigating to the home screen from the splash screen using Flutter's Navigator after the initialization tasks are completed."
  }

  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Colors.purpleAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Pori screen k axis ki adjustment
          crossAxisAlignment: CrossAxisAlignment.center,
          // Row ki axis ki adjustment
          children: [
            Image.asset('assets/images/logo.png'),
            //SizedBox(height: 400),
            /*Text(
              'WorkHerWay',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
