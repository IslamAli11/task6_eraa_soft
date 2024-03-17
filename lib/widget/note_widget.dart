import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  NoteWidget({super.key});
  var noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Note',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextFormField(
          controller: noteController,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
            hintText: 'Enter your Note',
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
