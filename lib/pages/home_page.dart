import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 390,
        height: 844,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 50,
              left: 0,
              child: Container(
                  width: 390,
                  height: 663,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: ListView(children: <Widget>[
                    Positioned(
                        top: 10,
                        left: 10,
                        child: Text(
                          'Welcome ${user?.email ?? 'Guest'}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Amiri',
                              fontSize: 30,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1.8333333333333333),
                        )),
                    Positioned(
                        top: 50,
                        left: 10,
                        child: Text(
                          'Welcome to Miracle’s Salons',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Amiri',
                              fontSize: 13,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1.8333333333333333),
                        )),
                    Positioned(
                        top: 316,
                        left: 29,
                        child: Text(
                          'Hair Specialist',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Amiri',
                              fontSize: 24,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 0.9166666666666666),
                        )),
                    Positioned(
                        top: 603,
                        left: 29,
                        child: Text(
                          'Categories',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Amiri',
                              fontSize: 24,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 0.9166666666666666),
                        )),
                    Positioned(
                        top: 355,
                        left: 34,
                        child: Container(
                            width: 331,
                            height: 199,
                            decoration: BoxDecoration(),
                            child: Stack(children: <Widget>[
                              
                            ]))),
                    
                    Positioned(
                        top: 14,
                        left: 310,
                        child: Container(
                            width: 56,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Undraw_profile_pic_re_iwgo1.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                  ]))),
          
        ]));
  }
}

class ImagePlaceholder extends StatelessWidget {
  final String? imagePath;
  const ImagePlaceholder({super.key,this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath!,
      fit: BoxFit.cover,

    );
  }
}
