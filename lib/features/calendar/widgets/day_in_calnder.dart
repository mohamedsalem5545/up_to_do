import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class DaysInCalender extends StatelessWidget {
  const DaysInCalender({
    super.key,
    required this.isToday,
    required this.date,
    required this.weekdays,
  });

  final bool isToday;
  final DateTime date;
  final List<String> weekdays;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //selectedDate = date;
      },
      child: Container(
        padding: const EdgeInsets.all(8),
     //   margin:  EdgeInsets.symmetric(horizontal: 2.5.w),
        decoration: BoxDecoration(
          color: isToday ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: isToday
              ? Border.all(color: Colors.blue)
              : Border.all(color: Colors.transparent),
        ),
        child: Column(
          children: [
            Text(
              DateFormat('MMM').format(date).toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 4.h),
            Text(
              '${date.day}',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 4.h),
            Text(
              weekdays[date.weekday % 7],
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

