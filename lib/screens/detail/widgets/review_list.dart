import 'package:flutter/material.dart';
import 'package:primer_aplicacion/screens/detail/widgets/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Review(),
        Review(
          name: 'Julian',
          detail: '3 Photos 10 Reviews',
          comment: 'Good',
          parhImage: 'assets/img/pexels-dương-nhân-3155265.jpg',
        ),
        Review(
          name: 'I am not OSDE',
          detail: '0 Photos 1 Reviews',
          comment: 'I am not OSDE ',
          parhImage: 'assets/img/osde.png',
        ),
      ],
    );
  }
}
