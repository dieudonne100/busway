import 'package:busway/app/common/boutton_sign.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(96, 37, 225, 1),
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: const Color.fromRGBO(96, 37, 225, 1),
        //   centerTitle: true,
        //   leading: const Icon(Icons.arrow_back),
        //   title: const Text(
        //     "Login",
        //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        //   ),
        // ),
        body: Padding(
          padding: const EdgeInsets.only(top: 72, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 160,
                padding: EdgeInsets.zero,
                child: const Text(
                  "Welcome Back!",
                  maxLines: 2,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        focusColor: Color.fromRGBO(255, 113, 29, 1),
                        fillColor: Colors.white,
                        hintText: 'Enter your email',
                        prefixIcon: Icon(Icons.email)),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        focusColor: Color.fromRGBO(255, 113, 29, 1),
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.remove_red_eye)),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Forget Password?",
                    style: TextStyle(color: Color.fromRGBO(255, 113, 29, 1)),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 113, 29, 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Container(
                    height: 1,
                    color: const Color.fromRGBO(255, 113, 29, 1),
                    width: 150,
                  ),
                  const Text(
                    "OR",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    height: 1,
                    width: 155,
                    color: const Color.fromRGBO(255, 113, 29, 1),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const BottonSign(
                      images: "assets/Google.svg",
                      title: "Sign up with Google"),
                  const SizedBox(
                    height: 16,
                  ),
                  const BottonSign(
                      images: "assets/apple.svg", title: "Sign up with Apple"),
                  const SizedBox(
                    height: 8,
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'Already have an account?  ',
                      style: TextStyle(fontSize: 12),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign up',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(255, 113, 29, 1),
                            )),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
