
 
 import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
   TitleWidget({super.key});
  var titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
crossAxisAlignment:  CrossAxisAlignment.start,
      children: [
        const Text('Title',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
                  hintText: 'Enter Title'
                ),
              ),
              const SizedBox(height: 15,)
      ],
    );
  }
}