import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/screens/auth/constants.dart';
import 'package:facebook_clone/screens/auth/widgets.dart';
import 'package:flutter/material.dart';

class NameEntry extends StatefulWidget {
  NameEntry({Key? key}) : super(key: key);

  @override
  State<NameEntry> createState() => NamesStatEntry();
}

class NamesStatEntry extends State<NameEntry> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: getAppbar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              "What's your name?",
              style: boldStyle,
            ),
            const SizedBox(height: 10),
            Text(
              "Enter the name you use in real life",
              style: lightStyle,
            ),
            const SizedBox(height: 42),
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.close,
                    size: 18,
                  ),
                  onPressed: () {},
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.black, width: 1.5),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.black, width: 1.0),
                ),
                labelText: 'First name',
                labelStyle: lightStyle,
                contentPadding: const EdgeInsets.only(
                    left: 15, bottom: 11, top: 11, right: 15),
              ),
              style: const TextStyle(fontSize: 20),
              // maxLength: 6,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.close,
                    size: 18,
                  ),
                  onPressed: () {},
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.black, width: 1.5),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.black, width: 1.0),
                ),
                labelText: 'Last name',
                labelStyle: lightStyle,
                contentPadding: const EdgeInsets.only(
                    left: 15, bottom: 11, top: 11, right: 15),
              ),
              style: const TextStyle(fontSize: 20),
              // maxLength: 6,
            ),
            const SizedBox(height: 30),
            CustomButton(text: 'Next', onPressed: () {}, padding: size.width)
          ],
        ),
      ),
    );
  }
}
