import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bus_controller.dart';

class BusView extends GetView<BusController> {
  const BusView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BusView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BusView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
