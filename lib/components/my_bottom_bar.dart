// ignore_for_file: unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:notes_app/pages/courses_page.dart';
import 'package:notes_app/pages/home_page.dart';

import '../pages/bookmarks_page.dart';
import '../pages/profile_page.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  final int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomePage(),
    const CoursesPage(),
    const BookmarksPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.grey[100],
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * .04, vertical: h * .01),
        child: GNav(
          gap: 10,
          tabBorderRadius: 100,
          backgroundColor: Colors.grey[100]!,
          activeColor: Colors.white,
          color: Colors.blue[600],
          tabBackgroundGradient: LinearGradient(
            colors: [
              Colors.blue[400]!,
              Colors.blueAccent.shade700,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          iconSize: 30,
          textSize: 18,
          padding: EdgeInsets.symmetric(horizontal: w * .01, vertical: h * .02),
          tabs: const [
            GButton(
              icon: CupertinoIcons.home,
              text: 'Home',
            ),
            GButton(
              icon: CupertinoIcons.news_solid,
              text: 'Courses',
            ),
            GButton(
              icon: CupertinoIcons.bookmark_fill,
              text: 'Bookmarks',
            ),
            GButton(
              icon: CupertinoIcons.person_alt_circle,
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
