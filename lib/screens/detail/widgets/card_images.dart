import 'package:flutter/material.dart';
import 'package:primer_aplicacion/widgets/floatin_action_button/floating_action_button_image.dart';

class CardImages extends StatelessWidget {
  final String pathImage;
  const CardImages({
    Key? key,
    this.pathImage = 'assets/img/pexels-confinedriley-11595339.jpg',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350,
      width: 250,
      margin: const EdgeInsets.only(top: 80, left: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0.0, 7.0),
          ),
        ],
      ),
    );
    return Stack(
      alignment: const Alignment(0.95, 1.15),
      children: <Widget>[
        card,
        const FlotatingActionButtonImage(),
      ],
    );
  }
}
