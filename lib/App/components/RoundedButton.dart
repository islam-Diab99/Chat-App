import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key, this.colour, this.title, required this.onPressed})
      : super(key: key);
  final Color? colour;
  final String? title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: colour,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      onPressed: onPressed,
      minWidth: 200.0,
      height: 42.0,
      child: Text(title!,
          style: TextStyle(
            color: Colors.white,
          )),
    );
  }
}
