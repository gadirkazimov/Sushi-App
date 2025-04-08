import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sushi_app/components/hot_product_container.dart';
import 'package:sushi_app/components/my_appBar.dart';
import 'package:sushi_app/components/my_text_field.dart';
import 'package:sushi_app/components/onsale_product_container.dart';
import 'package:sushi_app/model.dart';
import '../components/food_tyle.dart';
import 'food_details_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController controller = TextEditingController();

  List foodMenu = [
    Food(
        name: 'Salmon',
        imagePath: 'lib/images/sushi-2.png',
        price: '\$20',
        rating: '4.9'),
    Food(
        name: 'Tuna',
        imagePath: 'lib/images/sushi-4.png',
        price: '\$28',
        rating: '4.7')
  ];

  void navigateProductDetail(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FoodDetailsPage(
                  food: foodMenu[index],
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OnsaleProductContainer(),
            myTextField(controller),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Food Menu',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodMenu.length,
                itemBuilder: (context, index) => FoodTyle(
                  food: foodMenu[index],
                  onTap: () => navigateProductDetail(index),
                ),
              ),
            ),
            hotProductContainer(),
          ],
        ),
      ),
    );
  }
}
