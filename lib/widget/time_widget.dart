import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeWidget extends StatefulWidget {
  const TimeWidget({super.key});

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  var endTimeController = TextEditingController();
  var startTimeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Start Time',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: startTimeController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13)),
                        hintText: DateTime.now().toString(),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.watch_later_outlined),
                          onPressed: () {
                            showTime();
                          },
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'End Time',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: endTimeController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13)),
                        hintText: DateTime.now().toString(),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.watch_later_outlined),
                          onPressed: () {
                            showTime();
                          },
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  showTime() async {
    TimeOfDay? _pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
  }
}
