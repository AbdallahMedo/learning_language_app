import 'package:flutter/material.dart';
import 'package:learning_language_app/models/family_members_model.dart';

class FamilyItem extends StatefulWidget {
  final Members members;

  const FamilyItem({
    super.key,
    required this.members,
  });

  @override
  State<FamilyItem> createState() => _FamilyItemState();
}

class _FamilyItemState extends State<FamilyItem> {
  bool isPlaying = false;
  void toggleIcone() {
    setState(() {
      if (isPlaying = !isPlaying) {
        widget.members.playSound();
      } else {
        widget.members.stopSound();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: const Color(0xffB9E59A),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF4DB),
            child: Image.asset(widget.members.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.members.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                Text(
                  widget.members.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                toggleIcone();
                //widget.numbers.playSound();
              },
              icon: Icon(
                isPlaying ? Icons.stop : Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
