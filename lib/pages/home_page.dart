import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();

  final user = FirebaseAuth.instance.currentUser;
}

class ImagePlaceholder extends StatelessWidget {
  final String? imagePath;
  const ImagePlaceholder({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath!,
      fit: BoxFit.cover,
    );
  }
}

final List<String> imagePaths = [
  "assets/images/head (1).png",
  "assets/images/head (2).png",
  "assets/images/head (3).png"
];

late List<Widget> _pages;

int _activePage = 0;

final PageController _pageController = PageController(initialPage: 0);

Timer? _timer;

class StylistCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/stylist.png'),
          ),
          SizedBox(height: 10),
          Text(
            'Stylist Name',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Specialty',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class _HomePageState extends State<HomePage> {
  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_pageController.page == imagePaths.length - 1) {
        //checks if its on the last image
        _pageController.animateToPage(0,
            duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
      } else {
        _pageController.nextPage(
            duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
      }
    });
  }

  @override
  void initState() {
    //implement initState
    super.initState();
    _pages = List.generate(
        imagePaths.length,
        (index) => ImagePlaceholder(
              imagePath: imagePaths[index],
            ));
    startTimer();
  }

  @override
  void dispose() {
    //implement dispose
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              //code for top bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Welcome ${widget.user?.email ?? 'Guest'}'),
                    Container(
                      width: 56,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/Undraw_profile_pic_re_iwgo1.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //code for scroll banner
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 4,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: imagePaths.length,
                      onPageChanged: (value) {
                        setState(() {
                          _activePage = value;
                        });
                      },
                      itemBuilder: (context, index) {
                        //return image widget
                        return _pages[index];
                      },
                    ),
                  ),
                  //code for page indicator of scroll banner
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(
                            _pages.length,
                            (index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: InkWell(
                                    onTap: () {
                                      _pageController.animateToPage(index,
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.easeIn);
                                    },
                                    child: CircleAvatar(
                                      radius: 4,
                                      backgroundColor: _activePage == index
                                          ? Colors.black
                                          : Colors.grey,
                                    ),
                                  ),
                                )),
                      ),
                    ),
                  )
                ],
              ),

              //Hair Specialist
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hair Specialist',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //code for hair specialist
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          StylistCard(),
                          StylistCard(),
                          StylistCard(),
                          StylistCard(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Categories
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //code for categories
                    Container(
                      height: 200,
                      width: 300,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text('Hair & Styling'),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.yellow,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('Brows & Lashes'),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.yellow,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('Skincare'),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.yellow,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('Barber'),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text('Nails'),
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.yellow),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Massage'),
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.yellow)),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Makeup'),
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.yellow)),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Braids & Locks'),
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.yellow)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
