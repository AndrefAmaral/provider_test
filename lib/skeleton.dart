import 'package:flutter/material.dart';
import 'package:provider_flutter/pages/challenge_page.dart';
import 'package:provider_flutter/pages/home_page.dart';
import 'package:provider_flutter/pages/settings_page.dart';

class Skeleton extends StatefulWidget {
  const Skeleton({super.key});

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  int _optionSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _optionSelected,
        backgroundColor: Colors.teal,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.black,
        onTap: (option) {
          setState(() {
            _optionSelected = option;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Challenge',
          ),
        ],
      ),
      body: IndexedStack(
        index: _optionSelected,
        children: const <Widget>[
          HomePage(),
          Settings(),
          ChallengePage(),
        ],
      ),
    );
  }
}
