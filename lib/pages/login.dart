import 'package:flutter/material.dart';
import 'package:hair_salon_app/components/myTextField.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Image.asset('lib/images/login.png'),
              SizedBox(height: 50),
              Text(
                'Welcom Back',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 50),

              MyTextField(controller: usernameController,hintText: 'username',obscureText: false,),

              const SizedBox(height: 10),

              MyTextField(controller: passwordController,hintText: 'password',obscureText: true,),



            ],
          ),
        ),
      ),
    );
  }
}
