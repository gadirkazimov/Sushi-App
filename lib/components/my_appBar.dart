import 'package:flutter/material.dart';

PreferredSizeWidget appBar() {
  return AppBar(
    leading: const Icon(
      Icons.menu,
      size: 30,
      color: Colors.black,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: const Text(
      'Tokyo',
      style: TextStyle(fontSize: 25.0),
    ),
  );
}
