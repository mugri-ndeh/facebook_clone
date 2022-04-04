import 'package:facebook_clone/screens/auth/constants.dart';
import 'package:facebook_clone/screens/auth/widgets.dart';
import 'package:flutter/material.dart';

class GenderScreen extends StatefulWidget {
  GenderScreen({Key? key}) : super(key: key);

  @override
  State<GenderScreen> createState() => _GenderStateScreen();
}

class _GenderStateScreen extends State<GenderScreen> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: getAppbar(context, title: 'Gender'),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "What's your gender?",
            style: boldStyle,
          ),
          const SizedBox(height: 10),
          Text(
            "You can change who can see your gender later",
            style: lightStyle,
          ),
          RadioListTile(
            value: val,
            groupValue: val,
            onChanged: (val) {
              setState(() {
                val = val!;
              });
            },
            title: const Text("Male"),
          ),
          RadioListTile(
            value: val,
            groupValue: val,
            onChanged: (val) {
              setState(() {
                val = val!;
              });
            },
            title: const Text("Female"),
          ),
          const SizedBox(height: 42),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomButton(
                text: 'Next', onPressed: () {}, padding: size.width),
          )
        ],
      ),
    );
  }
}
