import 'package:flutter/material.dart';
import 'package:uptodo/features/splesh/widget/splesh_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SplashViewbody(),
    );
  }
}
