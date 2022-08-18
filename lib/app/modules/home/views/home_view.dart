import 'package:busway/app/modules/home/widgets/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: scrollController,
          slivers: <Widget>[
            SliverAppBar(
                backgroundColor: const Color.fromRGBO(94, 21, 253, 1),
                expandedHeight: 200,
                leading: Container(
                    width: 70,
                    height: 40,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 113, 29, 1),
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(20))),
                    child: const Center(
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 25,
                      ),
                    )),
                title: SvgPicture.asset("assets/BusWay.svg",
                    height: 36, width: 68, fit: BoxFit.contain),
                actions: [
                  const Icon(Icons.search, color: Colors.white, size: 24),
                  PopupMenuButton(
                    splashRadius: 24,
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(child: Text("More")),
                        const PopupMenuItem(child: Text("More")),
                      ];
                    },
                    icon: const Icon(Icons.more_vert,
                        color: Colors.white, size: 24),
                  ),
                  const SizedBox(width: 5),
                ],
                pinned: true,
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromRGBO(94, 21, 253, 1),
                    Color.fromRGBO(94, 21, 253, 1)
                  ])),
                )),
            SliverList(
                delegate: SliverChildListDelegate([
              const Tickets(),
            ]))
          ],
        ),
      ),
    );
  }
}
