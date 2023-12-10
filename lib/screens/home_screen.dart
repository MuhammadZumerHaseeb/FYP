import 'package:flutter/material.dart';
import 'package:flutter_project/authentication_screens/sign_in_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome!!!'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          // Pori screen k axis ki adjustment
          crossAxisAlignment: CrossAxisAlignment.center,
          // Row ki axis ki adjustment
          children: [
            //SizedBox(height: 400),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: ElevatedButton(
                child: const Text('Get Started'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
