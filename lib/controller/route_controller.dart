import 'package:Skill_Quest/view/pages/auth_page.dart';
import 'package:Skill_Quest/view/pages/course_list.dart';
import 'package:Skill_Quest/view/pages/dashboard.dart';
import 'package:Skill_Quest/view/pages/settings.dart';
import 'package:Skill_Quest/view/pages/user_profile.dart';
import 'package:Skill_Quest/view/widgets/common/navbar.dart';
import 'package:get/get.dart';

class PageRoutes {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: () => Navbar()),
    GetPage(name: dashboard, page: () => const Dashboard('Dashboard')),
    GetPage(name: userProfile, page: () => UserProfile()),
    GetPage(name: settings, page: () => const SettingsPage()),
    GetPage(name: courseList, page: () => const CourseList()),
    GetPage(name: authPage, page: () => const AuthPage()),
  ];

  static getNavbar() => navbar;
  static getDashboard() => dashboard;
  static getUserProfile() => userProfile;
  static getSettings() => settings;
  static getCourseList() => courseList;
  static getAuthPage() => authPage;
  //
  static String navbar = '/';
  static String dashboard = '/dashboard';
  static String userProfile = '/user_profile';
  static String settings = '/settings';
  static String courseList = '/course_list';
  static String authPage = '/auth_page';
}
