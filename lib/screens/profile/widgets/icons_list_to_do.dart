import 'package:flutter/material.dart';

class IconList extends StatelessWidget {
  const IconList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<Icon> icons = [
      Icon(
        Icons.save,
        size: 22,
        color: Colors.deepPurple,
      ),
      Icon(
        Icons.tv,
        size: 22,
        color: Colors.deepPurple,
      ),
      Icon(
        Icons.add,
        size: 55,
        color: Colors.deepPurple,
      ),
      Icon(
        Icons.mail,
        size: 22,
        color: Colors.deepPurple,
      ),
      Icon(
        Icons.person,
        size: 22,
        color: Colors.deepPurple,
      ),
    ];

    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: icons
            .map((Icon icon) => Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    color: Colors.white,
                  ),
                  child: icon,
                ))
            .toList(),
      ),
    );
  }
}
