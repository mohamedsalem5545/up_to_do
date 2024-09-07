import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:uptodo/features/add_task/presentation/add_task.dart';

class DataTextField extends StatefulWidget {
  const DataTextField({super.key});

  @override
  State<DataTextField> createState() => _DataTextFieldState();
}

class _DataTextFieldState extends State<DataTextField> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != selectedDate)
      // ignore: curly_braces_in_flow_control_structures
      setState(() {
        selectedDate = pickedDate;
      });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        // labelText: 'Date',
       hintText: DateFormat('MM/dd/yyyy').format(selectedDate),
      
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_today),
          onPressed: () => _selectDate(context),
        ),
      ),
    );
  }
}
