import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AbbperWidget extends StatelessWidget {
  const AbbperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
         SizedBox(
          width: 10.w,
        ),
         Text(
          'Add Task',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32.sp,
          ),
        )
      ],
    );
  }
}
