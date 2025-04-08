import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/my_button.dart';
import 'package:sushi_app/const/constants.dart';

import '../model.dart';

class FoodDetailsPage extends StatefulWidget {
  Food food;
  FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  int count = 0;

  void decrement() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30.0,
            )),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: ListView(
              children: [
                Image.asset(
                  widget.food.imagePath,
                  height: 200.0,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Text(widget.food.rating,
                        style: const TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  widget.food.name,
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 30.0, color: Colors.black),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const Text(
                  'Description',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Sushi is a traditional Japanese dish that has gained global popularity for its unique combination of flavors, textures, and presentation. It typically consists of vinegared rice paired with a variety of ingredients, including seafood, vegetables, and sometimes fruit.',
                  style: TextStyle(
                      fontSize: 18, color: Colors.grey[900], height: 2.0),
                )
              ],
            ),
          )),
          Container(
            padding: const EdgeInsets.all(25.0),
            color: kPrimaryColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.food.price,
                      style: const TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: kSecondarycolor),
                          child: IconButton(
                            onPressed: () => decrement(),
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                          child: Center(
                              child: Text(
                            count.toString(),
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: kSecondarycolor),
                          child: IconButton(
                            onPressed: () => increment(),
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                MyButton(text: 'Add To Cart', onTap: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}
