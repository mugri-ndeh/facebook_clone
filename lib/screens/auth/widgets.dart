import 'package:facebook_clone/config/palette.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.padding})
      : super(key: key);
  final String text;
  final Function() onPressed;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onPressed,
        child: Stack(children: [
          Container(
            width: padding,
            padding: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
                gradient: Palette.buttonGradient,
                borderRadius: BorderRadius.circular(24)),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

AppBar getAppbar(BuildContext context) {
  return AppBar(
    title: const Text(
      'Create account',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
    ),
  );
}
