import 'package:flutter/material.dart';
import 'package:target/screens/explore/widgets.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(20),
            ),
            Icon(Icons.language_outlined),
            SizedBox(
              width: 12,
            ),
            Icon(Icons.dark_mode_outlined),
            SizedBox(
              width: 32,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LocationSearchBar(),
              // PostCard(),
              // CategoryNav(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  const Text(
                    'Discover',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    margin: const EdgeInsets.all(
                      4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/apple.png',
                          width: 160,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Image.asset(
                          'assets/images/fig.png',
                          width: 200,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Explore More',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    margin: const EdgeInsets.all(
                      4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/potato.png',
                          width: 120,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Image.asset(
                          'assets/images/cully.png',
                          width: 100,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Image.asset(
                          'assets/images/pump.png',
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const SizedBox(
          height: 80,
          child: BottomAppBar(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(top: 8, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Search
                  Column(
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  // Favorite
                  Column(
                    children: [
                      Icon(
                        Icons.explore_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Explore',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  // Airbnb
                  Column(
                    children: [
                      Icon(
                        Icons.camera_rounded,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Traget',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  // Chat
                  Column(
                    children: [
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'My Page',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  // Profile
                  Column(
                    children: [
                      Icon(
                        Icons.person_outline_rounded,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
