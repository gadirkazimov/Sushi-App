import 'package:flutter/material.dart';

Widget hotProductContainer() {
  return Container(
    height: 100,
    margin: const EdgeInsets.symmetric(vertical: 20.0),
    padding: const EdgeInsets.all(20.0),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset('lib/images/sushi-3.png'),
            const SizedBox(
              width: 20.0,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sushi Roll',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
                ),
                Text('\$21',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500))
              ],
            )
          ],
        ),
        const Icon(Icons.favorite_border_outlined)
      ],
    ),
  );
}
