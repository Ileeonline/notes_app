// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/components/bookmark_tile.dart';

import '../components/my_bottom_bar.dart';

class BookmarksPage extends StatefulWidget {
  const BookmarksPage({super.key});

  @override
  State<BookmarksPage> createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: const MyBottomBar(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Bookmarks',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        actions: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: w * .02, vertical: h * .02),
            child: const Icon(
              CupertinoIcons.search,
              size: 30,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          BookmarkTile(
            courseName: 'Physics',
            imgPath: 'assets/physics.png',
            imgDesc: "The best guide you've ever seen",
            onPressed: () {},
          ),
          SizedBox(
            height: h * .01,
          ),
          BookmarkTile(
            courseName: 'HRM',
            imgPath: 'assets/hrm.png',
            imgDesc: "The best guide you've ever seen",
            onPressed: () {},
          ),
          SizedBox(
            height: h * .01,
          ),
          BookmarkTile(
            courseName: 'Computer Science',
            imgPath: 'assets/computer.png',
            imgDesc: "The best guide you've ever seen",
            onPressed: () {},
          ),
          SizedBox(
            height: h * .01,
          ),
          BookmarkTile(
            courseName: 'Chemistry',
            imgPath: 'assets/chemistry.png',
            imgDesc: "The best guide you've ever seen",
            onPressed: () {},
          ),
          SizedBox(
            height: h * .01,
          ),
          BookmarkTile(
            courseName: 'Maths',
            imgPath: 'assets/maths.png',
            imgDesc: "The best guide you've ever seen",
            onPressed: () {},
          ),
          SizedBox(
            height: h * .01,
          ),
        ],
      ),
    );
  }
}
