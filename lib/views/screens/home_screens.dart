import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:todo_and_reminder_app/views/widgets/custom_drawer.dart';

// ignore: must_be_immutable
class Homescreen extends StatefulWidget {
  final ValueChanged<bool> onThemeModeChanged;
  Homescreen({super.key, required this.onThemeModeChanged});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.tr("homescreen"),
        ),
        actions: [
          DropdownButton(
              value: context.locale,
              items: const [
                DropdownMenuItem(
                  value: Locale('uz'),
                  child: Text('🇺🇿'),
                ),
                DropdownMenuItem(
                  value: Locale('en'),
                  child: Text('🇺🇸'),
                ),
                DropdownMenuItem(
                  value: Locale('ru'),
                  child: Text('🇷🇺'),
                )
              ],
              onChanged: (value) {
                context.setLocale(value!);
                setState(() {});
              })
        ],
      ),
      drawer: CustomDrawer(onThemeModeChanged: widget.onThemeModeChanged),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [],
        ),
      ),
    );
  }
}
