import 'package:flutter/material.dart';
import 'package:learning_language_app/models/numbers_model.dart';

class NumbersItem extends StatefulWidget {
  final Numbers numbers;



  NumbersItem({required this.numbers,} );

  @override
  State<NumbersItem> createState() => _NumbersItemState();
}

class _NumbersItemState extends State<NumbersItem> {

  bool isPlaying=false;
  void toggleIcone()
  {
    setState(() {


      if( isPlaying=!isPlaying)
      {
        widget.numbers.playSound();

      }else
      {
        widget.numbers.stopSound();

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color(0xffFFD09B),
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF4DB),
            child: Image.asset(widget.numbers.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.numbers.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                Text(
                  widget.numbers.enName,
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
                isPlaying ? Icons.stop :
                Icons.play_arrow,
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

