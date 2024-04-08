// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  void Function()? onTap;
  final IconData tileIcon;
  final String tileName;
  SettingTile({
    super.key,
    required this.onTap,
    required this.tileIcon,
    required this.tileName,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: w * .02,
          vertical: h * .018,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  tileIcon,
                  color: Colors.blue,
                  size: 40,
                ),
                SizedBox(
                  width: w * .02,
                ),
                Text(
                  tileName,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: Colors.black),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 30,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
