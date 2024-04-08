// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:notes_app/components/catagories.dart';

class AllCatagories extends StatefulWidget {
  const AllCatagories({super.key});

  @override
  State<AllCatagories> createState() => _AllCatagoriesState();
}

class _AllCatagoriesState extends State<AllCatagories> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Catagory',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: h * .02,
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
          SizedBox(
            height: h * .02,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Catagories(
                imagePath: 'assets/accounting.png',
                catagoryName: 'Accounting',
              ),
              Catagories(
                imagePath: 'assets/science.png',
                catagoryName: 'Science',
              ),
              Catagories(
                imagePath: 'assets/maths.png',
                catagoryName: 'Maths',
              ),
              Catagories(
                imagePath: 'assets/eng.png',
                catagoryName: 'English',
              ),
            ],
          ),
          SizedBox(
            height: h * .02,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Catagories(
                imagePath: 'assets/photography.png',
                catagoryName: 'Photography',
              ),
              Catagories(
                imagePath: 'assets/finance.png',
                catagoryName: 'Finance',
              ),
              Catagories(
                imagePath: 'assets/writing.png',
                catagoryName: 'Writing',
              ),
              Catagories(
                imagePath: 'assets/ai.png',
                catagoryName: 'AI/ML',
              ),
            ],
          ),
          SizedBox(
            height: h * .02,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Catagories(
                imagePath: 'assets/health.png',
                catagoryName: 'Health',
              ),
              Catagories(
                imagePath: 'assets/music.png',
                catagoryName: 'Music',
              ),
              Catagories(
                imagePath: 'assets/sales.png',
                catagoryName: 'Sales',
              ),
              Catagories(
                imagePath: 'assets/fashion.png',
                catagoryName: 'Fashion',
              ),
            ],
          ),
          SizedBox(
            height: h * .02,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Catagories(
                imagePath: 'assets/vr.png',
                catagoryName: 'VR',
              ),
              Catagories(
                imagePath: 'assets/hrm.png',
                catagoryName: 'HRM',
              ),
              Catagories(
                imagePath: 'assets/agriculture.png',
                catagoryName: 'Agriculture',
              ),
              Catagories(
                imagePath: 'assets/architecture.png',
                catagoryName: 'Architecture',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
