import 'package:flutter/material.dart';
import 'package:flutter_project/authentication_screens/customs_widgets/custom_text_form_field.dart';
import 'package:flutter_project/authentication_screens/sign_in_page.dart';
import 'package:flutter_project/screens/forget_password.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFFD4E157), Colors.purpleAccent],
            // lime color code
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Create Your Account',
                style: TextStyle(
                  //fontSize: ,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              CustomTextFormField(
                labelText: "Username",
                hintText: "Enter your username",
                emailIcon: const Icon(Icons.person),
              ),
              const SpaceBox(),
              CustomTextFormField(
                labelText: "Email",
                hintText: "Enter your email",
                emailIcon: const Icon(Icons.email),
              ),
              const SpaceBox(),
              CustomTextFormField(
                labelText: "Password",
                hintText: "Enter your password",
                emailIcon: const Icon(Icons.lock),
              ),
              const SpaceBox(),
              CustomTextFormField(
                labelText: "Confirm Password",
                hintText: "Enter your confirm password",
                emailIcon: const Icon(Icons.lock),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgetPassword()),
                      );
                    },
                    child: const Text("Sign Up")),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have Account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()),
                      );
                    },
                    child: const Text(
                      "SignIn",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SpaceBox extends StatelessWidget {
  const SpaceBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 10);
  }
}
