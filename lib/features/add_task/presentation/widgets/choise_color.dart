import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uptodo/features/add_task/presentation/add_task.dart';

class ChoiseColor extends StatefulWidget {
  const ChoiseColor({super.key});

  @override
  State<ChoiseColor> createState() => _ChoiseColorState();
}

class _ChoiseColorState extends State<ChoiseColor> {

  final List<int> _colors = [
    0xffFF0000,
    0xff00FF00,
    0xff0000FF,
    0xffFFA500,
    0xff800080,

    // Colors.red,
    // Colors.green,
    // Colors.blue,
    // Colors.orange,
    // Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _colors.map((color) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedColor = color;
            });
          },
          child: Container(
            margin:  EdgeInsets.symmetric(horizontal: 4.0.w),
            decoration: BoxDecoration(
              color: Color(color),
              shape: BoxShape.circle,
              border: selectedColor == color
                  ? Border.all(color: Colors.white, width: 2.0.w)
                  : null,
            ),
            width: 40.w,
            height: 40.h,
          ),
        );
      }).toList(),
    );
  }
}
