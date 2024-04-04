// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:todo_app_flutter/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Tambahkan sebuah tugas"),
          ),

          //Button save
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //save
              MyButton(text: 'Simpan', onPressed: onSave),

              const SizedBox(
                width: 8,
              ),
              //cancel
              MyButton(text: 'Batal', onPressed: onCancel)
            ],
          )
        ]),
      ),
    );
  }
}
