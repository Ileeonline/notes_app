import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  final String imagePath;
  final String catagoryName;
  const Catagories({
    super.key,
    required this.imagePath,
    required this.catagoryName,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[100],
          ),
          child: Image.asset(
            imagePath,
            height: h * .03,
            width: w * .03,
            color: Colors.blue,
          ),
        ),
        SizedBox(
          height: h * .02,
        ),
        Text(
          catagoryName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
