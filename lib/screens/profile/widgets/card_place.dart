import 'package:flutter/material.dart';
import 'package:primer_aplicacion/screens/profile/widgets/title_card.dart';
import 'package:primer_aplicacion/widgets/floatin_action_button/floating_action_button_image.dart';

class CardPlace extends StatelessWidget {
  final String path, title, description, steps;
  const CardPlace({
    Key? key,
    this.path = 'assets/img/pexels-gaetan-thurin-3163895.jpg',
    this.title = 'Knuckles Mountains Range',
    this.description =
        'Hiking, Water fall hunting, Natural bath,\nScenery & Photography',
    this.steps = 'Steps 123,123,123',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget image = Container(
      width: 400,
      height: 250,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0.0, 7.0),
          ),
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(path),
        ),
      ),
    );

    return Stack(
      alignment: const Alignment(0, 1.8),
      children: [
        image,
        Column(
          children: [
            Stack(
              alignment: const Alignment(0.85, 1.3),
              children: [
                CardTitle(title: title, description: description, steps: steps),
                const FlotatingActionButtonImage(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
