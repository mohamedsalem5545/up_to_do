import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
    required TextEditingController titleController,
//required this.textLabel,
  }) : _titleController = titleController;

  final TextEditingController _titleController;
 //final  String textLabel;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _titleController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter title here',
        // hintText: 'Enter title here',
      ),
    );
  }
}
