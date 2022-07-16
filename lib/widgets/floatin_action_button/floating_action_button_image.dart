import 'package:flutter/material.dart';

class FlotatingActionButtonImage extends StatefulWidget {
  const FlotatingActionButtonImage({Key? key}) : super(key: key);

  @override
  State<FlotatingActionButtonImage> createState() =>
      _FlotatingActionButtonImageState();
}

class _FlotatingActionButtonImageState
    extends State<FlotatingActionButtonImage> {
  bool isFavorite = false;

  void addFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.green,
      onPressed: addFavorite,
      mini: true,
      tooltip: 'Favorite',
      child: Center(
        child: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
      ),
    );
  }
}
