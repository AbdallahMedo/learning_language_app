import 'package:flutter/material.dart';
import '../models/phrases_model.dart';
class PhrasesItem extends StatefulWidget {
  final PhrasesModel phrase;


  PhrasesItem({required this.phrase});



  @override
  State<PhrasesItem> createState() => _PhrasesItemState();
}

class _PhrasesItemState extends State<PhrasesItem> {
  bool isPlaying=false;
  void toggleIcone()
  {
    setState(() {


      if( isPlaying=!isPlaying)
      {
        widget.phrase.playSound();

      }else
      {
        widget.phrase.stopSound();

      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff8FAFDB),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      widget.phrase.speech,
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                     Text(
                      widget.phrase.desc,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
             const Spacer(
                flex: 1,
              ),
              IconButton(
                  onPressed: () {toggleIcone();},
                icon: Icon(
                  isPlaying ? Icons.stop :
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
