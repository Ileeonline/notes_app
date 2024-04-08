import 'package:flutter/material.dart';

class PopularCourses extends StatelessWidget {
  final String imgPath;
  final String courseRating;
  final String courseName;
  final String publisherName;
  final String price;
  final String courseRecomendation;

  const PopularCourses({
    super.key,
    required this.imgPath,
    required this.courseRating,
    required this.courseName,
    required this.publisherName,
    required this.price,
    required this.courseRecomendation,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: w * .05, left: w * .05),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(
                    imgPath,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: w * .02,
                  top: h * .01,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: w * .01, vertical: h * .01),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text(
                          courseRating,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: w * .05,
                  top: h * .015,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Icon(
                      Icons.bookmark,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * .01,
          ),
          Padding(
            padding: EdgeInsets.only(left: w * .01, right: w * .12),
            child: Column(
              children: [
                Text(
                  courseName,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: h * .01,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey[800],
                    ),
                    SizedBox(
                      width: w * .05,
                    ),
                    Text(
                      publisherName,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * .01,
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: w * .05,
                    ),
                    Text(
                      courseRecomendation,
                      style: const TextStyle(
                        color: Colors.orange,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: h * .05,
          )
        ],
      ),
    );
  }
}
