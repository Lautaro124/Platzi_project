import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  final String title, description, steps;
  const CardTitle({
    Key? key,
    required this.title,
    required this.description,
    required this.steps,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 120,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w100,
              color: Colors.grey,
            ),
          ),
          Text(
            steps,
            style: const TextStyle(
              fontSize: 15,
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
