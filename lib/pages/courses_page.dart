// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:notes_app/components/course_tile.dart';
import 'package:notes_app/components/my_bottom_bar.dart';
import 'package:notes_app/components/my_drawer.dart';

import 'course_preview.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: const MyDrawer(),
      bottomNavigationBar: const MyBottomBar(),
      appBar: AppBar(
        scrolledUnderElevation: 1,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          CourseTile(
            courseName: 'Biology',
            imgPath: 'assets/biology.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePreview(),
                ),
              );
            },
          ),
          CourseTile(
            courseName: 'Chemistry',
            imgPath: 'assets/chemistry.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePreview(),
                ),
              );
            },
          ),
          CourseTile(
            courseName: 'Physics',
            imgPath: 'assets/physics.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePreview(),
                ),
              );
            },
          ),
          CourseTile(
            courseName: 'Computer',
            imgPath: 'assets/computer.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePreview(),
                ),
              );
            },
          ),
          CourseTile(
            courseName: 'Biology',
            imgPath: 'assets/biology.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePreview(),
                ),
              );
            },
          ),
          CourseTile(
            courseName: 'Chemistry',
            imgPath: 'assets/chemistry.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePreview(),
                ),
              );
            },
          ),
          CourseTile(
            courseName: 'Physics',
            imgPath: 'assets/physics.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePreview(),
                ),
              );
            },
          ),
          CourseTile(
            courseName: 'Computer',
            imgPath: 'assets/computer.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CoursePreview(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
