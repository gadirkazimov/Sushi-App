import 'package:flutter/material.dart';
import 'package:sushi_app/const/constants.dart';
import 'my_button.dart';

class OnsaleProductContainer extends StatelessWidget {
  const OnsaleProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      padding: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get 32% Promo',
                style: kSecondaryStyle,
              ),
              const SizedBox(
                height: 10.0,
              ),
              MyButton(
                text: 'Redeem',
              )
            ],
          ),
          const SizedBox(
            width: 30.0,
          ),
          Image.asset(
            'lib/images/sushi-2.png',
            height: 100.0,
          )
        ],
      ),
    );
  }
}
