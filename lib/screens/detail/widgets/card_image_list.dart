import 'package:flutter/material.dart';
import 'package:primer_aplicacion/screens/detail/widgets/card_images.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      child: ListView(
        padding: const EdgeInsets.all(27),
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          CardImages(),
          CardImages(
            pathImage: 'assets/img/pexels-dương-nhân-3155265.jpg',
          ),
          CardImages(
            pathImage: 'assets/img/pexels-ellie-burgin-12700785.jpg',
          ),
          CardImages(
            pathImage: 'assets/img/pexels-gaetan-thurin-3163895.jpg',
          ),
          CardImages(
            pathImage: 'assets/img/pexels-red-zeppelin-11891907.jpg',
          ),
          CardImages(
            pathImage: 'assets/img/pexels-tetyana-kovyrina-12031047.jpg',
          ),
        ],
      ),
    );
  }
}
