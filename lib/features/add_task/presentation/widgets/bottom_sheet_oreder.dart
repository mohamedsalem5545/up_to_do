import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ButtomSheetOrder extends StatelessWidget {
   ButtomSheetOrder({
    required this.color,
    required this.taskOrder,

    super.key,
  });

  int color;
  String taskOrder ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(8),
        ),
        height: 55.h,
        width: double.infinity,
        child: Center(
          child: Text(
            taskOrder,
          ),
        ),
      ),
    );
  }
}
