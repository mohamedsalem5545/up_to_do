import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:uptodo/features/calendar/calendar_view.dart';

class ButtomButton extends StatelessWidget {
  const ButtomButton({
    super.key,
    required this.buttonTextt,
    required int currentIndex,
    required PageController controller,
  })  : _currentIndex = currentIndex,
        _controller = controller;

  final int _currentIndex;
  final PageController _controller;
  final String buttonTextt;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(20, 48),
          backgroundColor: const Color(0xff8875FF), // Button color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: () {
          if (_currentIndex < 2) {
            _controller.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn);
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                       const CalendarScreen(
                           )));
          }
        },
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 16.0.h, horizontal: 20.w),
          child: Text(
            buttonTextt,
            style:  TextStyle(
              color: Colors.white,
              fontSize: 16.0.sp,
            ),
          ),
        ),
      ),
    );
  }
}
