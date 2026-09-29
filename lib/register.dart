import 'package:flutter/material.dart';
import 'customtextfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(35, 50, 35, 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Text',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 30),
              CustomTextField(
                label: 'Full Name',
              ),
              CustomTextField(
                label: 'Email',
              ),
              CustomTextField(
                label: 'Password',
                obscureText: true,
              ),
              CustomTextField(
                label: 'Repeat Password',
                obscureText: true,
              ),
              Text(
                'Already have an account?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(width: 5),
              Text(
                'Log-in',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
