import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(96, 37, 225, 1),
        body: Padding(
          padding: const EdgeInsets.only(top: 100, left: 16, right: 16),
          child: Stack(
            children: [
              SvgPicture.asset("assets/BusWay.svg"),
              Center(child: SvgPicture.asset("assets/load.svg")),
              const Text("Quick & Easy to Travel anywhere & anytime",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white
                  ))
            ],
          ),
        ));
  }
}
