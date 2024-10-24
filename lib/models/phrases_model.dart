import 'package:audioplayers/audioplayers.dart';

class PhrasesModel {
  final String sound;
  final String speech;
  final String desc;

  PhrasesModel({
    required this.sound,
    required this.speech,
    required this.desc,
  });

  playSound() async {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }

  stopSound() {
    final player = AudioPlayer();
    player.stop();
  }
}

List<PhrasesModel> phrasesList = [
  PhrasesModel(
      sound: "sounds/phrases/are_you_coming.wav",
      speech: "phrase in japanese",
      desc: "Are you comming"),
  PhrasesModel(
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
      speech: "Phrase in japanese",
      desc: "don't forget to study"),
  PhrasesModel(
      sound: "sounds/phrases/how_are_you_feeling.wav",
      speech: "Phrase in japanese",
      desc: "how are you feeling"),
  PhrasesModel(
      sound: "sounds/phrases/i_love_anime.wav",
      speech: "Phrase in japanese",
      desc: "I love anime"),
  PhrasesModel(
      sound: "sounds/phrases/i_love_programming.wav",
      speech: "Phrase in japanese",
      desc: "I love prograamming"),
  PhrasesModel(
      sound: "sounds/phrases/programming_is_easy.wav",
      speech: "Phrase in japanese",
      desc: "Prograamming is easy"),
  PhrasesModel(
      sound: "sounds/phrases/what_is_your_name.wav",
      speech: "Phrase in japanese",
      desc: "What is your name"),
  PhrasesModel(
      sound: "sounds/phrases/where_are_you_going.wav",
      speech: "Phrase in japanese",
      desc: "Where are you going"),
  PhrasesModel(
      sound: "sounds/phrases/yes_im_coming.wav",
      speech: "Phrase in japanese",
      desc: "Yes ' i'm comming"),
];
