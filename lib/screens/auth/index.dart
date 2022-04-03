import 'package:facebook_clone/config/navigation.dart';
import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/data/data.dart';
import 'package:facebook_clone/screens/auth/signup/index.dart';
import 'package:facebook_clone/screens/auth/widgets.dart';
import 'package:facebook_clone/screens/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AuthBase extends StatelessWidget {
  const AuthBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('assets/icons/bare_logo.png'),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 200,
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: CachedNetworkImage(
                            imageUrl: currentUser.imageUrl,
                            height: double.infinity,
                            width: 60.0,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 10),
                    Text(currentUser.name),
                    const Expanded(
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.more_vert)),
                    )

                    // IconButton(onPressed: () {}, icon: Icon(Icons.more))
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 40,
                child: Row(
                  children: [
                    Image.asset('assets/icons/add_icon.png'),
                    const SizedBox(width: 8),
                    const Text(
                      'Log into another account',
                      style: style,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                child: Row(
                  children: [
                    Image.asset('assets/icons/search_icon.png'),
                    const SizedBox(width: 12),
                    InkWell(
                      onTap: (() => push(context, const SignUpIndex())),
                      child: const Text(
                        'Find your account',
                        style: style,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: CustomButton(
              padding: size.width,
              text: 'Create New Facebook Account',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => BaseScreen())));
              }),
        ),
      ],
    ));
  }
}

const style = TextStyle(color: Color(0XFF384CFF), fontWeight: FontWeight.w500);
