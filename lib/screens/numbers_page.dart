import 'package:flutter/material.dart';

import '../component/item_container.dart';
import '../models/numbers_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff64828C),
        title:const Text(
          "Numbers",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: number_items.length,
        itemBuilder: (context ,index){
          return NumbersItem(numbers: number_items[index],);
        },

      ),
    );

  }

}



