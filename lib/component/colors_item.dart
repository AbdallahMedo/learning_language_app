import 'package:flutter/material.dart';
import '../models/colors_model.dart';

class ColorsItem extends StatefulWidget {
  final ColorsModel colors;

  const ColorsItem({
    super.key,
    required this.colors,
  });

  @override
  State<ColorsItem> createState() => _FamilyItemState();
}

class _FamilyItemState extends State<ColorsItem> {
  bool isPlaying = false;
  void toggleIcone() {
    setState(() {
      if (isPlaying = !isPlaying) {
        widget.colors.playSound();
      } else {
        widget.colors.stopSound();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: const Color(0xffBC7C7C),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF4DB),
            child: Image.asset(widget.colors.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.colors.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                Text(
                  widget.colors.enName,
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
