// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CourseTile extends StatelessWidget {
  final String courseName;
  final String imgPath;
  final String imgDesc;
  void Function()? onPressed;
  CourseTile({
    super.key,
    required this.courseName,
    required this.imgPath,
    required this.imgDesc,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(vertical: h * .01, horizontal: w * .01),
      child: ListTile(
        onTap: () {},
        leading: Image.asset(imgPath),
        title: Text(
          courseName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          imgDesc,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
        trailing: IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.play_circle_rounded,
            size: 40,
            color: Colors.blue[800],
          ),
        ),
      ),
    );
  }
}
