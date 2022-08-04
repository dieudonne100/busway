import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/saets_controller.dart';

class SaetsView extends GetView<SaetsController> {
  const SaetsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SaetsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SaetsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
