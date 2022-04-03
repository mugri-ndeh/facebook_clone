import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

push(BuildContext context, Widget destination) {
  Navigator.of(context)
      .push(CupertinoPageRoute(builder: (context) => destination));
}

pudsReplacement(BuildContext context, Widget destination) {
  Navigator.of(context)
      .pushReplacement(CupertinoPageRoute(builder: (context) => destination));
}
