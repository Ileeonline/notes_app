// ignore_for_file: unused_local_variable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:notes_app/pages/all_catagories.dart';
import 'package:notes_app/pages/bookmarks_page.dart';
import 'package:notes_app/pages/courses_page.dart';
import 'package:notes_app/pages/home_page.dart';
import 'package:notes_app/pages/profile_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.height;
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.fromLTRB(.01, .01, .01, .01),
            child: UserAccountsDrawerHeader(
              currentAccountPicture: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
                child: CircleAvatar(
                  child: Image.asset('assets/boy.png'),
                ),
              ),
              accountName: const Text("John Wade"),
              accountEmail: const Text('jacobjohn@gmail.com'),
            ),
          ),
          SizedBox(
            height: h * .01,
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            leading: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.home_filled,
                size: 40,
                color: Colors.grey[800],
              ),
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: h * .02,
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.add,
                size: 40,
                color: Colors.grey[800],
              ),
            ),
            title: const Text(
              'Add Catagory',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: h * .02,
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AllCatagories(),
                ),
              );
            },
            leading: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.view_carousel,
                size: 40,
                color: Colors.grey[800],
              ),
            ),
            title: const Text(
              'View Catagories',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: h * .02,
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.note_add_outlined,
                size: 40,
                color: Colors.grey[800],
              ),
            ),
            title: const Text(
              'Add Course',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: h * .02,
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursesPage(),
                ),
              );
            },
            leading: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.notes_outlined,
                size: 40,
                color: Colors.grey[800],
              ),
            ),
            title: const Text(
              'View Course',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: h * .02,
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BookmarksPage(),
                ),
              );
            },
            leading: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.bookmark_outlined,
                size: 40,
                color: Colors.grey[800],
              ),
            ),
            title: const Text(
              'Bookmarks',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: h * .16,
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.logout_outlined,
                size: 40,
                color: Colors.grey[800],
              ),
            ),
            title: const Text(
              'Log Out',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
