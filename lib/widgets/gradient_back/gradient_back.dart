import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  final String title;
  final double size, aligmentx, aligmenty;
  const GradientBack({
    Key? key,
    this.title = 'Profile',
    required this.size,
    required this.aligmentx,
    required this.aligmenty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepPurpleAccent,
            Colors.deepPurple,
          ],
          begin: FractionalOffset(0.2, 0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
        ),
      ),
      alignment: Alignment(aligmentx, aligmenty),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 27,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
