import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpIndex extends StatelessWidget {
  const SignUpIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Center(
        child: Column(
          children: [SizedBox(child: SvgPicture.asset('assets/svg/img_1.svg'))],
        ),
      ),
    );
  }
}
