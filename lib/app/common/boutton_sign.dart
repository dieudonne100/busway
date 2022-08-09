import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottonSign extends StatelessWidget {
  final String title, images;

  const BottonSign({Key? key, required this.images, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              width: 1, color: const Color.fromRGBO(255, 113, 29, 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            images,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          )
        ],
      ),
    );
  }
}
