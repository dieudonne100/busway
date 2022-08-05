import 'dart:math';

import 'package:busway/app/modules/home/widgets/badge_ticket.dart';
import 'package:flutter/material.dart';
import 'package:ticket_material/ticket_material.dart';

class Tickets extends StatefulWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  State<Tickets> createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  var random = Random();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                TicketMaterial(
                  height: 150,
                  colorBackground: Colors.white,
                  leftChild: _buildLeft(),
                  rightChild: _buildRight(),
                ),
                BadgeTicket(
                    alignment: Alignment.topLeft,
                    visible: random.nextInt(1) == 0),
                BadgeTicket(
                    alignment: Alignment.topRight,
                    visible: random.nextInt(1) == 1),
              ],
            ),
          );
        },
        separatorBuilder: (_, index) => const SizedBox(
              height: 16,
            ),
        itemCount: 8);
  }

  Widget _buildLeft() {
    return Container(
      padding: EdgeInsets.zero,
      child: Column(
        children: const [
          Text(
            "06:00",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "12:30",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _buildRight() {
    return Container(
      padding: EdgeInsets.zero,
      child: const Center(
        child: Text('LEFT PART'),
      ),
    );
  }
}
