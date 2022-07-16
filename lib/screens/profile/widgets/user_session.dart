import 'package:flutter/material.dart';

class UserSession extends StatelessWidget {
  const UserSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget avatar = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(300),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(2.5),
      child: const CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage('assets/img/telescopy.jpg'),
      ),
    );

    final Widget user = Row(
      children: [
        avatar,
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Jose Ruiz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'jose@gmail.com',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Lato',
                ),
              ),
            ],
          ),
        ),
      ],
    );

    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: user,
    );
  }
}
