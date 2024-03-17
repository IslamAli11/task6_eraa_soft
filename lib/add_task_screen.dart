import 'package:flutter/material.dart';
import 'package:task6_eraa_soft/color_widget.dart';
import 'package:task6_eraa_soft/widget/date_widget.dart';
import 'package:task6_eraa_soft/widget/note_widget.dart';
import 'package:task6_eraa_soft/widget/time_widget.dart';
import 'package:task6_eraa_soft/widget/title_widget.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Task',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWidget(),
              NoteWidget(),
              DateWidget(),
              const TimeWidget(),
              const SizedBox(
                height: 15,
              ),
              const ColorWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
