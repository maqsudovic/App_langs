import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:todo_and_reminder_app/views/screens/course_view.dart';
import 'package:todo_and_reminder_app/views/screens/courses_screen.dart';
import 'package:todo_and_reminder_app/views/screens/home_screens.dart';
import 'package:todo_and_reminder_app/views/screens/notescreens.dart';
import 'package:todo_and_reminder_app/views/screens/settings_screen.dart';
import 'package:todo_and_reminder_app/views/widgets/tasks_screen.dart';

class CustomDrawer extends StatelessWidget {
  final ValueChanged<bool> onThemeModeChanged;
  CustomDrawer({super.key, required this.onThemeModeChanged});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text(context.tr("menu")),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) {
                    return Homescreen(onThemeModeChanged: onThemeModeChanged);
                  },
                ),
              );
            },
            leading: const Icon(Icons.home),
            title: Text(
              context.tr("homescreen"),
            ),
            trailing: const Icon(Icons.chevron_right_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) {
                    return SettingsScreen(
                        onThemeModeChanged: onThemeModeChanged);
                  },
                ),
              );
            },
            leading: const Icon(Icons.settings),
            title: Text(context.tr("settings")),
            trailing: const Icon(Icons.chevron_right_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) {
                    return ContactsScreen();
                  },
                ),
              );
            },
            leading: const Icon(Icons.tour_outlined),
            title: Text(context.tr("todo")),
            trailing: const Icon(Icons.chevron_right_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) {
                    return NoteScreen();
                  },
                ),
              );
            },
            leading: const Icon(Icons.note),
            title: Text(context.tr("note")),
            trailing: const Icon(Icons.chevron_right_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) {
                    return CoursesScreen();
                  },
                ),
              );
            },
            leading: const Icon(Icons.card_giftcard),
            title: Text(context.tr("card")),
            trailing: const Icon(Icons.chevron_right_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) {
                    return CourseView();
                  },
                ),
              );
            },
            leading: const Icon(Icons.note),
            title: Text(context.tr("courses")),
            trailing: const Icon(Icons.chevron_right_rounded),
          ),
        ],
      ),
    );
  }
}
