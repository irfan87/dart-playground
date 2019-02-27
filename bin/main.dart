//import 'package:dart_playground/dart_playground.dart' as dart_playground;

void main() {
  var student_first_name = "Ahmad Irfan";
  var student_last_name = "Mohammad Shukri";
  var student_gender = "Male";
  var student_dob = "1987-06-15";
  var course_name = "Information Technology";
  var student_status = false;

  student_profile(student_first_name, student_last_name, student_gender, student_dob, course_name, student_status);
}

void student_profile(String stud_first_name, String stud_last_name, String stud_gender, String stud_dob, String course, bool stud_status) {
  final student_current_age = calculate_student_age;

  print("Student Information");
  print("Student Fullname: ${stud_first_name + " " + stud_last_name}");
  print("Gender: ${stud_gender}");
  print("Age: ${student_current_age(stud_dob)} years old");
  print("Course Taken: ${course}");

  if(stud_status == true) {
    print("Status: Active");
  } else {
    print("Status: Not Active");
  }
}

String calculate_student_age(String stud_dob) {
  DateTime stud_born_date = DateTime.parse(stud_dob);
  Duration year_duration = DateTime.now().difference(stud_born_date);
  String differenceInYears = (year_duration.inDays / 365).floor().toString();

  return differenceInYears;
}