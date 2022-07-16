import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  final String buttonTitle;
  const ButtonPurple({
    Key? key,
    this.buttonTitle = 'Navigate',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context)
            // ignore: deprecated_member_use
            .showSnackBar(const SnackBar(content: Text('Navegando')));
      },
      child: Container(
        height: 50,
        width: 180,
        margin: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.deepPurpleAccent,
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.2),
            stops: [0, 0.6],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: 'Lato',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
