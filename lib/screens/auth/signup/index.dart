import 'package:facebook_clone/config/navigation.dart';
import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/screens/auth/constants.dart';
import 'package:facebook_clone/screens/auth/signup/name.dart';
import 'package:facebook_clone/screens/auth/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpIndex extends StatelessWidget {
  const SignUpIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: getAppbar(context),
      body: Center(
        child: Column(
          children: [
            SizedBox(child: SvgPicture.asset('assets/svg/img_1.svg')),
            const SizedBox(height: 50),
            Text(
              'Join Facebook',
              style: boldStyle,
            ),
            const SizedBox(height: 10),
            Text(
              "we'll help you",
              style: lightStyle,
            ),
            Text("create your accont in a few easy steps", style: lightStyle),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomButton(
                  padding: size.width,
                  text: 'Next',
                  onPressed: () {
                    push(context, NameEntry());
                  }),
            ),
            const SizedBox(height: 50),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text('Already have an account?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Palette.facebookBlue)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
