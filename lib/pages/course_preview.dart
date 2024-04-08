// ignore_for_file: unused_local_variable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import '../components/course_tile.dart';

class CoursePreview extends StatefulWidget {
  const CoursePreview({super.key});

  @override
  State<CoursePreview> createState() => _CoursePreviewState();
}

class _CoursePreviewState extends State<CoursePreview> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        scrolledUnderElevation: 1,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Chapter',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          CourseTile(
            courseName: 'Chapter -1',
            imgPath: 'assets/chapter.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: onPressed,
          ),
          CourseTile(
            courseName: 'Chapter -2',
            imgPath: 'assets/chapter.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: onPressed,
          ),
          CourseTile(
            courseName: 'Chapter -3',
            imgPath: 'assets/chapter.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: onPressed,
          ),
          CourseTile(
            courseName: 'Chapter -4',
            imgPath: 'assets/chapter.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: onPressed,
          ),
          CourseTile(
            courseName: 'Chapter -5',
            imgPath: 'assets/chapter.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: onPressed,
          ),
          CourseTile(
            courseName: 'Chapter -6',
            imgPath: 'assets/chapter.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: onPressed,
          ),
          CourseTile(
            courseName: 'Chapter -7',
            imgPath: 'assets/chapter.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: onPressed,
          ),
          CourseTile(
            courseName: 'Chapter -8',
            imgPath: 'assets/chapter.png',
            imgDesc: 'Best Book for the Course of all kind of boards',
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }

  void Function()? onPressed() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      showDragHandle: false,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.8,
          minChildSize: 0.5,
          maxChildSize: 0.8,
          builder: (BuildContext context, ScrollController scrollController) {
            var h = MediaQuery.of(context).size.height;
            var w = MediaQuery.of(context).size.height;
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: h * .05,
                      vertical: h * .02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Chapter Preview',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.download_rounded,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
