import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
    required this.backTextt,
    required int currentIndex,
    required PageController controller,
  })  : _currentIndex = currentIndex,
        _controller = controller;

  final int _currentIndex;
  final PageController _controller;
  final String backTextt;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: TextButton(
        onPressed: () {
          if (_currentIndex > 0 && _currentIndex < 3) {
            _controller.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn);
          } else {
            // Navigate to another screen
          }
        },
        child: Text(
          backTextt,
          style: TextStyle(
            fontSize: 16.sp,
           
            color: Colors.white.withOpacity(.5),
          ),
        ),
      ),
    );
  }
}

