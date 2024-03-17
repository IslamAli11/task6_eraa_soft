 
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EndTimeWidget extends StatefulWidget {
  const EndTimeWidget({super.key});

  @override
  State<EndTimeWidget> createState() => _MyWidgetState();
  
}

class _MyWidgetState extends State<EndTimeWidget> {
  var endTimeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
           Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                             
                                  const Text('End Time',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                   TextFormField(
                                    controller: endTimeController,
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
                      const SizedBox(height: 15,),
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