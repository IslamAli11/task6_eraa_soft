import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorWidget extends StatefulWidget {
  const ColorWidget({super.key});

  @override
  State<ColorWidget> createState() => _ColorWidgetState();
}

class _ColorWidgetState extends State<ColorWidget> {
  int color = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Color',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Expanded(
              child: Row(
                children: List.generate(
                    3,
                    (index) =>  Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                color=index;
                              });
                            },
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor:index==0? Colors.red:index==1 ?Colors.green:Colors.amber,
                              child: index==color? const Icon(
                                                        
                                Icons.check,
                                size: 18,
                                color: Colors.white,
                              ):const SizedBox(),
                            ),
                          ),
                        )),
              ),
            ),
            Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Create Task',
                      style: TextStyle(color: Colors.white),
                    ))),
          ],
        ),
      ],
    );
  }
}
