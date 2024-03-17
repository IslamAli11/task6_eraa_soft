// ignore_for_file: dead_code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateWidget extends StatefulWidget {
  DateWidget({super.key});

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  var dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Date',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextFormField(
          controller: dateController,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
              hintText: DateTime.now().toString(),
              suffixIcon: IconButton(
                icon: const Icon(Icons.date_range_sharp),
                onPressed: () {
                  showDate();
                },
              )),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  showDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2070));
  }
}
