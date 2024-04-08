// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:notes_app/components/my_bottom_bar.dart';
import 'package:notes_app/components/setting_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: const MyBottomBar(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: h * .03,
            ),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    child: Image.asset(
                      'assets/boy.png',
                    ),
                  ),
                  SizedBox(
                    height: h * .02,
                  ),
                  const Text(
                    'Jacob Jones',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: h * .025,
                  ),
                  SettingTile(
                    onTap: () {},
                    tileIcon: Icons.person,
                    tileName: 'Your Profile',
                  ),
                  SizedBox(
                    height: h * .01,
                  ),
                  SettingTile(
                    onTap: () {},
                    tileIcon: Icons.settings,
                    tileName: 'Settings',
                  ),
                  SizedBox(
                    height: h * .01,
                  ),
                  SettingTile(
                    onTap: () {},
                    tileIcon: Icons.help,
                    tileName: 'Help',
                  ),
                  SizedBox(
                    height: h * .01,
                  ),
                  SettingTile(
                    onTap: () {},
                    tileIcon: Icons.privacy_tip_sharp,
                    tileName: 'Privacy and Plolicy',
                  ),
                  SizedBox(
                    height: h * .01,
                  ),
                  SettingTile(
                    onTap: () {},
                    tileIcon: Icons.logout,
                    tileName: 'Log Out',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
