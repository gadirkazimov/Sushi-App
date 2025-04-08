import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/my_button.dart';
import 'package:sushi_app/const/constants.dart';
import 'main_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25.0,
            ),
            Text(
              'SUSHI MAN',
              style: kPrimaryStyle,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
              child: Image.asset('lib/images/sushi.png'),
            ),
            Text(
              'THE TASTE OF JAPANESE FOOD',
              style: kPrimaryStyle,
            ),
            const SizedBox(
              height: 25.0,
            ),
            const Text(
              'Feel the taste of the most popular Japanese food from anywhere and anytime',
              style:
                  TextStyle(color: Colors.white, height: 2.0, fontSize: 16.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            MyButton(
              text: 'Get Started',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
