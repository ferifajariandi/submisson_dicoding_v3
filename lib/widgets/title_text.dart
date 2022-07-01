import 'package:flutter/material.dart';
import 'package:submission_dicoding/data/colors.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    Key? key,
    required this.size, required this.index, required this.name,
  }) : super(key: key);

  final Size size;
  final int index;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        color: kTitleColor,
        fontWeight: FontWeight.bold,
        fontSize: size.width*0.055,
      ),
    );
  }
}
