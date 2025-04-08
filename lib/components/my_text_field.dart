import 'package:flutter/material.dart';

final TextEditingController controller = TextEditingController();

Widget myTextField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 3.0),
        borderRadius: BorderRadius.circular(20.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(20.0),
      ),
      hintText: 'Search here...',
      hintStyle: const TextStyle(color: Colors.grey),
    ),
  );
}
