import 'package:flutter/material.dart';
import 'package:primer_aplicacion/widgets/gradient_back/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  final Widget child;
  final String title;
  final double size, aligmentx, aligmenty;
  const HeaderAppBar({
    Key? key,
    required this.child,
    required this.title,
    this.size = 250,
    this.aligmentx = -0.9,
    this.aligmenty = -0.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack(
          title: title,
          size: size,
          aligmentx: aligmentx,
          aligmenty: aligmenty,
        ),
        child,
      ],
    );
  }
}
