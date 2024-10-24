import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_language_app/component/colors_item.dart';

import '../models/colors_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff64828C),
        title: const Text(
          "Colors",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return ColorsItem(colors: colorsList[index]);
        },
      ),
    );
  }
}
