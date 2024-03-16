  
   import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
   const AddTaskScreen({super.key});
   
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  var date = DateTime.now().toString();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Title',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
                  hintText: 'Enter Title'
                ),
              ),
              const SizedBox(height: 15,),
               const Text('Note',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
               TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
                  hintText: 'Enter your Note',
                  hintMaxLines: 4
                ),
              ),
              const SizedBox(height: 15,),
          
          
                const Text('Date',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
               TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
                  hintText: date.toString(),
                  suffixIcon: IconButton(icon: const Icon(Icons.date_range_sharp), onPressed: () {  },)
              
                ),
              ),
              const SizedBox(height: 15,),
                 Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      
                                    const Text('Start Time',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                   TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
                                      hintText: date.toString(),
                                      suffixIcon: IconButton(icon: const Icon(Icons.watch_later_outlined), onPressed: () { 
                                        showTime(isStartTime: true);
                                       },)
                                       
                                    ),
                             ),
                      
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                             
                                  const Text('End Time',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                   TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
                                      hintText: date.toString(),
                                      suffixIcon: IconButton(icon: const Icon(Icons.watch_later_outlined), onPressed: () {
                                        showTime(isStartTime: true);
                                        },)
                                       
                                    ),
                             ),
                      
                      
                        ],
                      ),
                    ),
                  
          
          
               
          
             
          
                  ],
                 ),
          
              const SizedBox(height: 15,),
          
              const Text('Color',style: TextStyle(fontWeight: FontWeight.bold),),
              Row(
                children: [
                   Expanded(
                     child: Row(
                                   children:List.generate(3, (index) => const Padding(
                                     padding: EdgeInsets.all(3.0),
                                     child: CircleAvatar(
                                      child: Icon(Icons.check,size: 18,color: Colors.white,),
                      radius: 15,
                      backgroundColor: Colors.red,
                      
                      
                                     ),
                                   )),
                                 ),
                   ),
                   Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed:(){}, child: const Text('Create Task',style: TextStyle(color: Colors.white),))),
          
                ],
              ),
             
          
            ],
          ),
        ),
      ),
    );
  }




showDate()async{
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate:DateTime.now(),
        firstDate:DateTime.now(),
        lastDate: DateTime(2070)
    );
   


}


  showTime({required bool isStartTime}) async {
    TimeOfDay? _pickedTime = await showTimePicker(
      context: context,
      initialTime: isStartTime
          ? TimeOfDay.fromDateTime(DateTime.now())
          : TimeOfDay.fromDateTime(
          DateTime.now().add(const Duration(minutes: 20))),
    );
    String formattedTime = _pickedTime!.format(context);
   
  }



}