import 'package:flutter/material.dart';
import 'package:primer_aplicacion/screens/detail/widgets/button_purple.dart';
import 'package:primer_aplicacion/screens/detail/widgets/stars.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace, descriptionPlace;
  final double stars;
  const DescriptionPlace(
      {Key? key,
      required this.namePlace,
      required this.descriptionPlace,
      required this.stars})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Row titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 350.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: 'Lato',
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            starEmptyOrHalf(),
            starEmptyOrHalf(),
            starEmptyOrHalf(),
            starEmptyOrHalf(),
            starEmptyOrHalf(isHalf: false)
          ],
        ),
      ],
    );

    final Column description = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        Container(
          margin: const EdgeInsets.only(
            top: 20.0,
            left: 21.0,
          ),
          child: Flexible(
            flex: 1,
            child: Text(
              descriptionPlace,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        const ButtonPurple(),
      ],
    );

    return description;
  }
}
