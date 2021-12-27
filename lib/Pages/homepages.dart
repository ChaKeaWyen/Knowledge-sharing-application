import 'package:almost/Pages/favourite.dart';
import 'package:almost/Pages/home.dart';
import 'package:almost/Pages/profilere.dart';
import 'package:almost/Pages/search.dart';
import 'package:almost/constant.dart';
import 'package:flutter/material.dart';

class Homere extends StatefulWidget {
  const Homere({Key? key}) : super(key: key);

  @override
  State<Homere> createState() => _HomereState();
}

class _HomereState extends State<Homere> {
  int _selectedIndex = 0;
  void _navigateButtomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserHomePage(),
    UserSearchPage(),
    UserFavPage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50))),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          child: SizedBox(
            width: 200,
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: _navigateButtomBar,
              type: BottomNavigationBarType.fixed,
              elevation: 20,
              selectedItemColor: Wine,
              unselectedItemColor: Colors.black,
              backgroundColor: Colors.grey[200],
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: 'Favourite'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
