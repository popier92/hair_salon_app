import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final void Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 80),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          ),
        child: Center(
          child: Text(
            'Sign in',
            style:  TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              ),
            
            ),
        ),
      ),
    );
  }
}