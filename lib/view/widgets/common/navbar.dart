import 'package:Skill_Quest/controller/navbar_controller.dart';
import 'package:Skill_Quest/main.dart';
import 'package:Skill_Quest/view/pages/course_list.dart';
import 'package:Skill_Quest/view/pages/dashboard.dart';
import 'package:Skill_Quest/view/pages/settings.dart';
import 'package:Skill_Quest/view/pages/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class Navbar extends StatefulWidget {
  Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final navController = Get.put(NavbarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavbarController>(
      builder: (context) {
        return Scaffold(
          body: IndexedStack(
            index: navController.tabIndex,
            children: [
              const Dashboard('My Courses'),
              const CourseList(),
              UserProfile(),
              const SettingsPage()
            ],
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(this.context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: kPrimaryColor,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.red,
              textTheme: Theme.of(this.context).textTheme.copyWith(
                    bodySmall: const TextStyle(color: Colors.yellow),
                  ),
            ), // sets the inactive color of the `BottomNavigationBar`

            child: BottomNavigationBar(
              backgroundColor: kPrimaryColor,
              selectedItemColor: Colors.black87,
              unselectedItemColor: Colors.black87,
              currentIndex: navController.tabIndex,
              onTap: navController.changeTabIndex,
              items: [
                _bottombarItem(IconlyBold.home, "Dashboard"),
                _bottombarItem(IconlyBold.bookmark, "Courses"),
                _bottombarItem(IconlyBold.profile, "Profile"),
                _bottombarItem(IconlyBold.setting, "Settings"),
              ],
            ),
          ),
        );
      },
    );
  }
}

_bottombarItem(IconData icon, String label) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: label,
  );
}
