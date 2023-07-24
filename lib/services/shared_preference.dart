import 'package:shared_preferences/shared_preferences.dart';

void setEnrollmentStatus() async {}

updateEnrollmentStatus() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setBool('enrolled', true);
}

checkUserEnrollmentStatus() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return bool
  bool userEnrollmentStatus = prefs.getBool('userEnrolledCourse') ?? false;
  return userEnrollmentStatus;
}
