import 'package:facebook_clone/config/palette.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onPressed,
        child: Stack(children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            decoration: BoxDecoration(
                gradient: Palette.buttonGradient,
                borderRadius: BorderRadius.circular(24)),
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }
}
