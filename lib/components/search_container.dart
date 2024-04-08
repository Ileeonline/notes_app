import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: h * .35,
              decoration: const BoxDecoration(
                color: Color(0xff0961F5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: h * .1,
          left: w * .125,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hi, John👋',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: h * .01,
              ),
              const Text(
                "Let's start learning!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: w * .83,
          top: h * .1,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Badge(
              isLabelVisible: true,
              label: Text('2'),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: h * .23,
          left: w * .05,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: w * .215, vertical: h * .02),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.search,
                      size: 35,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: w * .01,
                    ),
                    const Text(
                      'Search...',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: w * .02,
              ),
              Container(
                padding: const EdgeInsets.all(21),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  CupertinoIcons.settings_solid,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
