import 'package:flutter/material.dart';
import 'package:learning_language_app/component/phrases_item.dart';
import 'package:learning_language_app/models/phrases_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff64828C),
        title: const Text(
          "Phrases",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
          itemBuilder:(context ,index){
          return PhrasesItem(phrase: phrasesList[index]);
          }
      ),
    );
  }
}
