class Course {
  final String name;
  final String description;

  Course(this.name, this.description);
}

class Schedule {
  final String title;
  final DateTime date;

  Schedule(this.title, this.date);
}

class Reminder {
  final String text;
  final DateTime date;

  Reminder(this.text, this.date);
}
