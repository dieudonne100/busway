import 'package:busway/app/controllers/firebase_controller.dart';
import 'package:busway/app/modules/home/widgets/path_rectangle_triangle.dart';
import 'package:busway/app/utils/datetime_hour.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tickets extends StatefulWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  State<Tickets> createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  var controller = Get.put(FirebaseController());

  @override
  Widget build(BuildContext context) {
    return controller.obx(
        onLoading: const CircularProgressIndicator.adaptive(),
        (state) => ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(8),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.only(left: 16, bottom: 16),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 90,
                            height: 32,
                            color: const Color(0xffFF711D),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 30, right: 5),
                              child: Text(
                                state!["buscollection"][index]["nom_agence"],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 0,
                              left: -1,
                              child: ClipPath(
                                clipper: CustomRectangleTriangleClipper(),
                                child: Container(
                                  width: 20,
                                  height: 32,
                                  color: Colors.blue,
                                ),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                timestampHour(state["buscollection"][index]
                                    ["heure_depart"]),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                timestampHour(state!["buscollection"][index]
                                    ["heure_arriver"]),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all()),
                                ),
                                Container(
                                  width: 1,
                                  height: 30,
                                  color: Colors.black,
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all()),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state["buscollection"][index]["ville_arriver"],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              ),
                              const Text(
                                "Bus Station",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                state["buscollection"][index]["ville_depart"],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              ),
                              const Text(
                                "Bus Station",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              const Text(
                                "Travel time",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                              Image.asset("assets/clock.png"),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Icon(Icons.access_time),
                                  Text(
                                    "6:30",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 16,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 90,
                            height: 30,
                            decoration: const ShapeDecoration(
                                shape: StadiumBorder(),
                                color: Color(0xffEFEFEF)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.info_outline,
                                  color: Color(0xff949494),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "Détails",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff949494),
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "20 ",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                          const Icon(Icons.euro),
                          const Spacer(),
                          Container(
                            width: 90,
                            height: 30,
                            decoration: const ShapeDecoration(
                                shape: StadiumBorder(),
                                color: Color(0xffFF711D)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "Take it",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
                  height: 40,
                ),
            itemCount: state!["buscollection"].length));
  }
}
