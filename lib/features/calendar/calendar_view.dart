import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:intl/intl.dart';


import 'package:uptodo/features/calendar/widgets/add_button.dart';
import 'package:uptodo/features/calendar/widgets/builder_widget.dart';
import 'package:uptodo/features/calendar/widgets/day_in_calnder.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen(
      {
    
      super.key});


  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
 
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('MMMM d, yyyy').format(now);
    List<String> weekdays = ['SUN', 'MO', 'TUE', 'WE', 'THU', 'FRI', 'SAT'];
    List<DateTime> weekDates = List.generate(7, (index) {
      return now.add(Duration(days: index));
    });

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    formattedDate,
                    style:  TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                   SizedBox(height: 8.h),
                   Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                   SizedBox(height: 16.h),
                  Row(
                    children: List.generate(7, (index) {
                      DateTime date = weekDates[index];
                      bool isToday = date.day == now.day &&
                          date.month == now.month &&
                          date.year == now.year;
                      return DaysInCalender(isToday: isToday, date: date, weekdays: weekdays);
                    }),
                  ),
                   SizedBox(height: 20.h),
                const   BuilderWidget(),
                 
                ],
              ),
            const  AddButton(),
            ],
          ),
        ),
      ),
    );
  }
}

