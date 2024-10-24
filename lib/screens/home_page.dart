import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_language_app/screens/phrases_page.dart';
import '../component/reusable_container.dart';
import 'colors_page.dart';
import 'family_members_page.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCDDAD3),
      appBar: AppBar(
        backgroundColor: const Color(0xff64828C),
        title: const Text(
          "Toku",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
              child: const ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image(
                  image: AssetImage("assets/images/card.jpg"),
                  width: double.infinity,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                "Welcom \nLearn how to speak languages \nJust take a tour",
                style: GoogleFonts.pacifico(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    color: Color(0xff091057),
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            ///Custom compenent  lib/component/ReusapleContainer/ReusapleContainer.dart
            ReusableContainer(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const NumbersPage();
                  }),
                );
              },
              text: "Numbers",
              color: const Color(0xffFDCA95),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            ReusableContainer(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
                {
                  return const FamilyMembers();
                }),);
              },
              text: "Family members",
              color: const Color(0xffB9E59A),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            ReusableContainer(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (buildcontext){
                  return ColorsPage();

                }));
              },
              text: "Colors",
              color: const Color(0xffBC7C7C),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            ReusableContainer(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (buildcontext)
                {
                  return PhrasesPage();
                }));
              },
              text: "Phrasesd",
              color: const Color(0xff8FAFDB),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
