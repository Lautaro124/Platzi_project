import 'package:flutter/material.dart';

Widget starEmptyOrHalf({bool? isHalf}) => Container(
      margin: const EdgeInsets.only(
        top: 355.0,
        right: 3.0,
      ),
      child: Icon(
        isHalf == null
            ? Icons.star
            : isHalf
                ? Icons.star_half
                : Icons.star_border,
        color: Colors.yellow,
      ),
    );
