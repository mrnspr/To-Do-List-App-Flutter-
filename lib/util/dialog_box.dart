import 'package:flutter/material.dart';
import 'package:proj_1/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          //get user input
           TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText:"Add a new task",
            ),
           ),   

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //save botton
              MyButton(text:"save", onPressed: onSave),
              const SizedBox(width: 8),
              //Cancell button
              MyButton(text:"cancel", onPressed: onCancel),
            ],
            
          ),
        ],
        ),
      ),

    );
  }
}