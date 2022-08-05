import 'package:flutter/material.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class BadgeTicket extends StatelessWidget {
  final Alignment alignment;
  final bool visible;
  const BadgeTicket({Key? key, required this.alignment, required this.visible})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Visibility(
        visible: visible,
        child: ShapeOfView(
          shape: CutCornerShape(
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(20))),
          child: Container(
            height: 50,
            width: 100,
            color: const Color.fromRGBO(255, 113, 29, 1),
            child: const Center(
              child: Text(
                "Generale Esxpress",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
            ),
          ),
        ),
        // child: Container(
        //   height: 21,
        //   width: 24,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.only(
        //       topLeft: alignment == Alignment.topLeft ||
        //               alignment == Alignment.bottomRight
        //           ? const Radius.circular(10)
        //           : Radius.zero,
        //       bottomRight: alignment == Alignment.topLeft ||
        //               alignment == Alignment.bottomRight
        //           ? const Radius.circular(10)
        //           : Radius.zero,
        //       topRight: alignment == Alignment.topRight ||
        //               alignment == Alignment.bottomLeft
        //           ? const Radius.circular(10)
        //           : Radius.zero,
        //       bottomLeft: alignment == Alignment.topRight ||
        //               alignment == Alignment.bottomLeft
        //           ? const Radius.circular(10)
        //           : Radius.zero,
        //     ),
        //     color: const Color.fromRGBO(4, 84, 77, 1),
        //   ),
        //   child: const Center(
        //     child: Text(
        //       '16',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontWeight: FontWeight.normal,
        //         fontSize: 9,
        //       ),
        //       textAlign: TextAlign.center,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
