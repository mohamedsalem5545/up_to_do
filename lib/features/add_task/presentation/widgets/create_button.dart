import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:uptodo/features/add_task/presentation/add_task.dart';
import 'package:uptodo/features/add_task/presentation/widgets/tasks.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({
    super.key,
    required TimeOfDay startTime,
    required TimeOfDay endTime,
    required TextEditingController noteController,
    required TextEditingController titleController,
  })  : 
  _startTime = startTime,
        _endTime = endTime,
        _noteController = noteController,
        _titleController = titleController;

  final TimeOfDay _startTime;
  final TimeOfDay _endTime;
  final TextEditingController _noteController;
  final TextEditingController _titleController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Tasks(
                        title: _titleController.text,
                        startTime: _startTime,
                        endTime: _endTime,
                        des: _noteController.text,
                        color: selectedColor,
                        date: selectedDate,
                      )));
          // print(_startTime.toString());
          // print(_selectedColor);

          // Handle task creation logic here
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          backgroundColor: const Color(0xff8875FF),
          padding:  EdgeInsets.symmetric(horizontal: 140.w, vertical: 20.h),
        ),
        child:  Text(
          'CREATE TASK',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
