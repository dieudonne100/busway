import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splashsreen_controller.dart';

class SplashsreenView extends GetView<SplashsreenController> {
  const SplashsreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashsreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SplashsreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
