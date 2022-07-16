import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String parhImage;
  final String name, detail, comment;
  const Review({
    Key? key,
    this.name = 'Ezequiel Rodriguez',
    this.detail = '1 Photo 200 Reviews',
    this.comment = 'I need money.',
    this.parhImage = 'assets/img/telescopy.jpg',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userComments = Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 14.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        detail,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 14.0,
          fontFamily: 'Lato',
          color: Colors.grey,
        ),
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 18.0,
          fontFamily: 'Lato',
        ),
      ),
    );

    final reviewStars = Row(
      children: [
        userInfo,
      ],
    );
    final userDetail = Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          userName,
          reviewStars,
          userComments,
        ],
      ),
    );

    final Container userPhoto = Container(
      margin: const EdgeInsets.only(top: 20, left: 20),
      width: 80,
      child: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(parhImage),
      ),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        userPhoto,
        userDetail,
      ],
    );
  }
}
