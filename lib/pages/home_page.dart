import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              top: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 0),
                        blurRadius: 1.899999976158142)
                  ],
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 21),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          
                          SizedBox(width: 134),
                          Container(
                            decoration: BoxDecoration(),
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[],
                            ),
                          ),
                          SizedBox(width: 134),
                          
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 50,
              left: 0,
              child: Container(
                  width: 390,
                  height: 663,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 25,
                        left: 10,
                        child: Text(
                          'Welcome to Miracle’s Salon',
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
                          'Welcome to Miracle’s Salon',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Amiri',
                              fontSize: 12,
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
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: SizedBox(
                                      width: 548,
                                      height: 199,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 107,
                                                height: 118,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                  ),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/Image18.png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                        Positioned(
                                            top: 0,
                                            left: 147,
                                            child: Container(
                                                width: 107,
                                                height: 118,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                  ),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/Image21.png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                        Positioned(
                                            top: 0,
                                            left: 294,
                                            child: Container(
                                                width: 107,
                                                height: 118,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                  ),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/Image20.png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                        Positioned(
                                            top: 0,
                                            left: 441,
                                            child: Container(
                                                width: 107,
                                                height: 118,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                  ),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/Image19.png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                        Positioned(
                                            top: 129,
                                            left: 0,
                                            child: Text(
                                              'Diana Elina',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontFamily: 'Amiri',
                                                  fontSize: 16,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.375),
                                            )),
                                        Positioned(
                                            top: 156,
                                            left: 0,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 22,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 44,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 67,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 89,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 181,
                                            left: 0,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 177,
                                            left: 20,
                                            child: Text(
                                              '012-3456789',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontFamily: 'Amiri',
                                                  fontSize: 14,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.5714285714285714),
                                            )),
                                        Positioned(
                                            top: 129,
                                            left: 293,
                                            child: Text(
                                              'Emely Dyan',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontFamily: 'Amiri',
                                                  fontSize: 16,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.375),
                                            )),
                                        Positioned(
                                            top: 156,
                                            left: 293,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 315,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 337,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 359,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 381,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 181,
                                            left: 293,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 177,
                                            left: 313,
                                            child: Text(
                                              '012-3456789',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontFamily: 'Amiri',
                                                  fontSize: 14,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.5714285714285714),
                                            )),
                                        Positioned(
                                            top: 129,
                                            left: 439,
                                            child: Text(
                                              'Wei Lui',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontFamily: 'Amiri',
                                                  fontSize: 16,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.375),
                                            )),
                                        Positioned(
                                            top: 156,
                                            left: 439,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 462,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 485,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 508,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 531,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 181,
                                            left: 439,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 177,
                                            left: 460,
                                            child: Text(
                                              '012-3456789',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontFamily: 'Amiri',
                                                  fontSize: 14,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.5714285714285714),
                                            )),
                                        Positioned(
                                            top: 129,
                                            left: 147,
                                            child: Text(
                                              'Nurul Atikah',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontFamily: 'Amiri',
                                                  fontSize: 16,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.375),
                                            )),
                                        Positioned(
                                            top: 156,
                                            left: 147,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 170,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 193,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 216,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 156,
                                            left: 239,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 181,
                                            left: 147,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 177,
                                            left: 168,
                                            child: Text(
                                              '012-3456789',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontFamily: 'Amiri',
                                                  fontSize: 14,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.5714285714285714),
                                            )),
                                      ]))),
                            ]))),
                    Positioned(
                        top: 643,
                        left: 29,
                        child: Container(
                            width: 157,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(244, 233, 212, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 36,
                                  left: 4,
                                  child: Text(
                                    'Hair & Styling',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Amiri',
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1.8333333333333333),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 97,
                                  child: Container(
                                      width: 58,
                                      height: 58,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Image22.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                            ]))),
                    Positioned(
                        top: 716,
                        left: 29,
                        child: Container(
                            width: 157,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 233, 212, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 36,
                                  left: 4,
                                  child: Text(
                                    'Brows and Lashes',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Amiri',
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1.8333333333333333),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 97,
                                  child: Container(
                                      width: 58,
                                      height: 58,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Image24.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                            ]))),
                    Positioned(
                        top: 789,
                        left: 29,
                        child: Container(
                            width: 157,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 233, 212, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 36,
                                  left: 6,
                                  child: Text(
                                    'Skincare',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Amiri',
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1.8333333333333333),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 97,
                                  child: Container(
                                      width: 58,
                                      height: 58,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Image27.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                            ]))),
                    Positioned(
                        top: 862,
                        left: 29,
                        child: Container(
                            width: 157,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 233, 212, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 36,
                                  left: 8,
                                  child: Text(
                                    'Barber',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Amiri',
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1.8333333333333333),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 97,
                                  child: Container(
                                      width: 58,
                                      height: 58,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Image28.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                            ]))),
                    Positioned(
                        top: 643,
                        left: 203,
                        child: Container(
                            width: 157,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 233, 212, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 36,
                                  left: 5,
                                  child: Text(
                                    'Nails',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Amiri',
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1.8333333333333333),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 97,
                                  child: Container(
                                      width: 58,
                                      height: 58,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Image23.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                            ]))),
                    Positioned(
                        top: 716,
                        left: 203,
                        child: Container(
                            width: 157,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 233, 212, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 36,
                                  left: 4,
                                  child: Text(
                                    'Massage',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Amiri',
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1.8333333333333333),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 97,
                                  child: Container(
                                      width: 58,
                                      height: 58,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Image25.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                            ]))),
                    Positioned(
                        top: 789,
                        left: 203,
                        child: Container(
                            width: 157,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 233, 212, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 36,
                                  left: 6,
                                  child: Text(
                                    'Makeup',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Amiri',
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1.8333333333333333),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 97,
                                  child: Container(
                                      width: 58,
                                      height: 58,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Image26.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                            ]))),
                    Positioned(
                        top: 862,
                        left: 203,
                        child: Container(
                            width: 157,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 233, 212, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 36,
                                  left: 6,
                                  child: Text(
                                    'Braids and Locs',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Amiri',
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1.8333333333333333),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 97,
                                  child: Container(
                                      width: 58,
                                      height: 58,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Image29.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
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
          Positioned(
              top: 723,
              left: 21,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4)
                  ],
                  color: Color.fromRGBO(244, 242, 242, 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(width: 45),
                    SvgPicture.asset('assets/images/vector1.svg',
                        semanticsLabel: 'vector'),
                    SizedBox(width: 45),
                    SvgPicture.asset('assets/images/vector2.svg',
                        semanticsLabel: 'vector'),
                    SizedBox(width: 45),
                  ],
                ),
              )),
        ]));
  }
}
