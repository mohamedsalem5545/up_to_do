import 'package:flutter/material.dart';

class NoteTextField extends StatelessWidget {
  const NoteTextField({
    super.key,
    required TextEditingController noteController,
  }) : _noteController = noteController;

  final TextEditingController _noteController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _noteController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        // labelText: 'Note',
        labelText: 'Enter note here',
      ),
    );
  }
}

