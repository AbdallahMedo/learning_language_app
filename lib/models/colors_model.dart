import 'package:audioplayers/audioplayers.dart';

class ColorsModel {
  final String sound;
  final String image;
  final String jpName;
  final String enName;



  ColorsModel({
    required this.sound,
    required this.image,
    required this.jpName,
    required this.enName,

  });


  playSound()async
  {
    final player=AudioPlayer();
    player.play(AssetSource(sound));
  }

  stopSound()
  {
    final player=AudioPlayer();
    player.stop();
  }
}

List<ColorsModel> colorsList=
[
  ColorsModel(
    image: 'assets/images/colors/color_black.png',
    jpName: 'Kuro',
    enName: 'Black',
    sound: "sounds/colors/black.wav",
  ),
  ColorsModel(
    image: 'assets/images/colors/color_brown.png',
    jpName: 'Chairo',
    enName: 'Brown',
    sound: "sounds/colors/brown.wav",
  ),
  ColorsModel(
    image: 'assets/images/colors/color_dusty_yellow.png',
    jpName: 'tanōshoku',
    enName: 'Dusty_Yellow',
    sound: "sounds/colors/dusty yellow.wav",
  ),
  ColorsModel(
    image: 'assets/images/colors/color_gray.png',
    jpName: 'Haiiro',
    enName: 'Gray',
    sound: "sounds/colors/gray.wav",
  ),
  ColorsModel(
    image: 'assets/images/colors/color_green.png',
    jpName: 'Midori',
    enName: 'Green',
    sound: "sounds/colors/green.wav",
  ),
  ColorsModel(
    image: 'assets/images/colors/color_red.png',
    jpName: 'Aka',
    enName: 'Red',
    sound: "sounds/colors/red.wav",
  ),
  ColorsModel(
    image: 'assets/images/colors/color_white.png',
    jpName: 'Shiro',
    enName: 'White',
    sound: "sounds/colors/white.wav",
  ),
  ColorsModel(
    image: 'assets/images/colors/yellow.png',
    jpName: 'Kiiro',
    enName: 'Yellow',
    sound: "sounds/colors/yellow.wav",
  ),

];