import 'package:flutter/material.dart';
import 'package:todo_and_reminder_app/controller/courses_controller.dart';
import 'package:todo_and_reminder_app/models/courses_model.dart';

class CourseView extends StatefulWidget {
  @override
  _CourseViewState createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> {
  final MyController controller = MyController();

  void _showSearch() {
    showSearch(
      context: context,
      delegate: MySearchDelegate(controller),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses, Schedules, Reminders'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: _showSearch,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildCourseList(controller.courses),
            buildScheduleList(controller.schedules),
            buildReminderList(controller.reminders),
          ],
        ),
      ),
    );
  }

  Widget buildCourseList(List<Course> courses) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: courses.length,
      itemBuilder: (context, index) => CourseListTile(courses[index]),
    );
  }

  Widget buildScheduleList(List<Schedule> schedules) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: schedules.length,
      itemBuilder: (context, index) => ScheduleListTile(schedules[index]),
    );
  }

  Widget buildReminderList(List<Reminder> reminders) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: reminders.length,
      itemBuilder: (context, index) => ReminderListTile(reminders[index]),
    );
  }
}

class MySearchDelegate extends SearchDelegate<String> {
  final MyController controller;

  MySearchDelegate(this.controller);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}

class CourseListTile extends StatelessWidget {
  final Course course;

  CourseListTile(this.course);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(course.name),
      subtitle: Text(course.description),
    );
  }
}

class ScheduleListTile extends StatelessWidget {
  final Schedule schedule;

  ScheduleListTile(this.schedule);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(schedule.title),
      subtitle: Text(schedule.date.toString()),
    );
  }
}

class ReminderListTile extends StatelessWidget {
  final Reminder reminder;

  ReminderListTile(this.reminder);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(reminder.text),
      subtitle: Text(reminder.date.toString()),
    );
  }
}