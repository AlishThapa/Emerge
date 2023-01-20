import 'package:emerge/Pages/profile.dart';
import 'package:flutter/material.dart';
import '';
import 'Pages/Homepage.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List<Widget> Pages = [
    HomePage(),
    Container(),
    Container(),
    Container(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Pages[currentIndex],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.only(top: 25, bottom: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  child: Icon(Icons.home_outlined)),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                child: Icon(
                  Icons.favorite_border,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
                child: Icon(Icons.shopping_cart),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                child: Icon(Icons.messenger_outline_outlined),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = 4;
                    });
                  },
                  child: Icon(Icons.person),),
            ],
          ),
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.amber,
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.home_outlined), label: 'home'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite_border), label: 'favourite'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.shopping_cart), label: 'shopping cart'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.messenger_outline_outlined), label: 'message'),
      //   ],
      // ),
    );
  }
}
