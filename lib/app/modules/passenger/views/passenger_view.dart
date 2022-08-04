import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/passenger_controller.dart';

class PassengerView extends GetView<PassengerController> {
  const PassengerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PassengerView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PassengerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
