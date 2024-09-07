import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SlidingImage extends StatelessWidget {
  const SlidingImage({
    Key? key,
    required this.slidingAnimation2,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation2;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation2,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation2,
            child: Center(
              child: SvgPicture.asset(
                'assets/images/logo.svg',
                width: 115.w,
                height: 115.h,
              ),
            ),
          );
        });
  }
}
