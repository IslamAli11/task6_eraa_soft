  
   import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartTimeWidget extends StatefulWidget {
  const StartTimeWidget({super.key});

  @override
  State<StartTimeWidget> createState() => _StartTimeWidgetState();
}

class _StartTimeWidgetState extends State<StartTimeWidget> {
  var startTimeController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      
                                    const Text('Start Time',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                   TextFormField(
                                    controller: startTimeController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
                                      hintText: DateTime.now().toString(),
                                      suffixIcon: IconButton(icon: const Icon(Icons.watch_later_outlined), onPressed: () { 
                                        showTime();
                                       },)
                                       
                                    ),
                             ),
                      
                        ],
                      ),
                    ),
                    const SizedBox(width: 10,),
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