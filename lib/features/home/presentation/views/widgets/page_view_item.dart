import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uptodo/features/home/presentation/views/widgets/back_button.dart';
import 'package:uptodo/features/home/presentation/views/widgets/buttom_button.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    // required int currentIndex,
    // required PageController controller,
    required this.image,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.backButtonText,
    required this.skipTex,
    required this.controllerr,
    required this.currentIndexx,
  }) ;

  final int currentIndexx;
  final PageController controllerr;
  final String image;
  final String title;
  final String description;
  final String buttonText;
  final String backButtonText;
  final String skipTex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: TextButton(
            onPressed: () {
              // Skip action
            },
            child: Text(
              //'SKIP',
              skipTex,
              style:  TextStyle(
                color: Colors.white.withOpacity(.5),
              ),
            ),
          ),
        ),
        SvgPicture.asset(
          image,
          height: 300.0.h,
          width: 300.w,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return Container(
              width: 33.w,
              height: 4.h,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: currentIndexx == index ? Colors.white : Colors.white24,
                shape: BoxShape.rectangle,
              ),
            );
          }),
        ),
        Column(
          children: [
            Text(
              title,
              style:  TextStyle(
                color: Colors.white,
                fontSize: 24.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 8.0.h),
            Text(
              description,
              textAlign: TextAlign.center,
              style:  TextStyle(
                color: Colors.white70,
                fontSize: 16.0.sp,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButtonWidget(
                backTextt: backButtonText,
                currentIndex: currentIndexx,
                controller: controllerr),
            ButtomButton(
                currentIndex: currentIndexx,
                controller: controllerr,
                buttonTextt: buttonText),
          ],
        ),
      ],
    );
  }
}
