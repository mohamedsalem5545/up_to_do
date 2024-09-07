import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:uptodo/features/home/presentation/views/widgets/page_view_item.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                controller: _controller,
                  onPageChanged: _onPageChanged,
                  children: [
                    // PageViewItem(currentIndex: -_currentIndex, controller: _controller, image: image, title: title, description: description, buttonText: buttonText, backButtonText: backButtonText, skipTex: skipTex, controllerr: controllerr, currentIndexx: currentIndexx)
                    PageViewItem(
                        currentIndexx: _currentIndex,
                        controllerr: _controller,
                        image: 'assets/images/image1.svg',
                        title: 'Manage your tasks',
                        description:
                            'You can easily manage all of your daily tasks in DoMe for free',
                        buttonText: 'NEXT',
                        backButtonText: '',
                        skipTex: 'SKIP'),
                    PageViewItem(
                        currentIndexx: _currentIndex,
                        controllerr: _controller,
                        image: 'assets/images/image2.svg',
                        title: 'Create daily routine',
                        description:
                            'In Uptodo you can create your personalized routine to stay productive',
                        buttonText: 'NEXT',
                        backButtonText: 'BACK',
                        skipTex: 'SKIP'),
                    PageViewItem(
                        currentIndexx: _currentIndex,
                        controllerr: _controller,
                        image: 'assets/images/image3.svg',
                        title: 'Organize your tasks',
                        description:
                            'You can organize your daily tasks by adding your tasks into separate categories',
                        buttonText: 'GET STARTED',
                        backButtonText: 'BACK',
                        skipTex: ''),
                  ],
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
