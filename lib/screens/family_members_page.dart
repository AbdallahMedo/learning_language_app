import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_language_app/component/family_members_item.dart';

import '../models/family_members_model.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff64828C),
        title:const Text(
          "Family Members",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body:ListView.builder(
        itemCount: membersList.length,
          itemBuilder: (context ,index)
          {
            return FamilyItem(members: membersList[index]);
          }
      ) ,

    );
  }
}
