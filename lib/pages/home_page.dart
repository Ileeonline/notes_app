// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:notes_app/components/catagories.dart';
import 'package:notes_app/components/my_bottom_bar.dart';
import 'package:notes_app/components/my_drawer.dart';
import 'package:notes_app/components/popular_courses.dart';
import 'package:notes_app/components/search_container.dart';
import 'package:notes_app/pages/all_catagories.dart';
import 'package:notes_app/pages/courses_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 1,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      extendBodyBehindAppBar: true,
      drawer: const MyDrawer(),
      bottomNavigationBar: const MyBottomBar(),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SearchContainer(),
            SizedBox(
              height: h * .03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Catagories',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AllCatagories(),
                            ),
                          );
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * .04,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Catagories(
                        imagePath: 'assets/paint.png',
                        catagoryName: 'Art',
                      ),
                      Catagories(
                        imagePath: 'assets/coding.png',
                        catagoryName: 'Coding',
                      ),
                      Catagories(
                        imagePath: 'assets/megaphone.png',
                        catagoryName: 'Marketing',
                      ),
                      Catagories(
                        imagePath: 'assets/briefcase.png',
                        catagoryName: 'buisness',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * .03,
            ),
            Padding(
              padding: EdgeInsets.only(right: w * .05, left: w * .05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Courses',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CoursesPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * .02,
            ),
            const PopularCourses(
              imgPath: 'assets/meeting.webp',
              courseRating: '4.8',
              courseName: 'Design Thinking Fundamentals',
              publisherName: 'Robert Green',
              price: '\$180',
              courseRecomendation: 'Best Seller',
            ),
            const PopularCourses(
              imgPath: 'assets/meeting.webp',
              courseRating: '4.8',
              courseName: 'Design Thinking Fundamentals',
              publisherName: 'Robert Green',
              price: '\$180',
              courseRecomendation: 'Best Seller',
            ),
            const PopularCourses(
              imgPath: 'assets/meeting.webp',
              courseRating: '4.8',
              courseName: 'Design Thinking Fundamentals',
              publisherName: 'Robert Green',
              price: '\$180',
              courseRecomendation: 'Best Seller',
            ),
          ],
        ),
      ),
    );
  }
}
