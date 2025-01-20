
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/components/my_textfield.dart';
import 'package:hair_salon_app/components/my_button.dart';
import 'package:hair_salon_app/services/firestore.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;  
  const RegisterPage({super.key , required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final FirestoreService _firestoreService = FirestoreService();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  

  void signup() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {

      if(passwordController.text == confirmPasswordController.text){
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
        );
        _firestoreService.createUser('user', emailController.text,'customer');
       Navigator.pop(context);
      }else{
       userErrorMsg('passwords do not match');
        return;
        
      }

    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        print('No user found for that email');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user');
      }
      userErrorMsg(e.code);
      return;
    }
    
  }

  void userErrorMsg(String msg) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
              child: Text(
            msg,
            style: const TextStyle(color: Colors.white),
          )
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Image.asset('lib/images/login.png'),
                SizedBox(height: 50),
                Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 50),
                MyTextField(
                  controller: emailController,
                  hintText: 'email',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: passwordController,
                  hintText: 'password',
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: 'confitm password',
                  obscureText: true,
                ),

                
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Forgot Password',
                          style: TextStyle(color: Colors.grey[600])),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                MyButton(
                  text: 'Sign up',
                  onTap: signup,
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('have an account?',
                            style: TextStyle(color: Colors.grey[600])),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 50),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'login here',
                        style: TextStyle(
                            color: Colors.blue[10], fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
