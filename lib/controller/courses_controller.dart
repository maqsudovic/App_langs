import 'package:todo_and_reminder_app/models/courses_model.dart';

class MyController {
  List<Course> courses = [
    Course("Sayohat", "velosiped uchish"),
  ];

  List<Schedule> schedules = [
    Schedule("Sayr qilish", DateTime(2024, 06, 15)),
  ];

  List<Reminder> reminders = [
    Reminder("Flutter", DateTime(2024, 06, 14)),
  ];

  List<Course> searchCourses(String query) {
    return courses
        .where((course) =>
            course.name.toLowerCase().contains(query.toLowerCase()) ||
            course.description.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
