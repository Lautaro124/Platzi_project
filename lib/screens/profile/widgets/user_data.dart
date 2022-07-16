import 'package:flutter/material.dart';
import 'package:primer_aplicacion/screens/profile/widgets/user_session.dart';

class UserData extends StatelessWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 115,
      ),
      child: Column(
        children: const [
          UserSession(),
        ],
      ),
    );
  }
}
