import 'package:audioplayers/audioplayers.dart';

class Members {
  final String sound;
  final String image;
  final String jpName;
  final String enName;



  Members({
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

List<Members> membersList=
[
  Members(
    image: 'assets/images/family_,members/family_father.png',
    jpName: 'chichi',
    enName: 'Father',
    sound: "sounds/family_members/father.wav",
  ),
  Members(
    image: 'assets/images/family_,members/family_mother.png',
    jpName: 'haha',
    enName: 'Mother',
    sound: "sounds/family_members/mother.wav",
  ),
  Members(
    image: 'assets/images/family_,members/family_grandfather.png',
    jpName: 'ojiisan',
    enName: 'Grandfather',
    sound: "sounds/family_members/grand father.wav",
  ),
  Members(
    image: 'assets/images/family_,members/family_grandmother.png',
    jpName: 'sobo',
    enName: 'Grandmother',
    sound: "sounds/numbers/number_four_sound.mp3",
  ),
  Members(
    image: 'assets/images/family_,members/family_older_brother.png',
    jpName: 'oniisan',
    enName: 'Older Brother',
    sound: "sounds/family_members/older bother.wav",
  ),
  Members(
    image: 'assets/images/family_,members/family_older_sister.png',
    jpName: 'oneesan',
    enName: 'Older sister',
    sound: "sounds/family_members/older sister.wav",
  ),
  Members(
    image: 'assets/images/family_,members/family_younger_brother.png',
    jpName: 'otôto',
    enName: 'Younger brother',
    sound: "sounds/family_members/younger brohter.wav",
  ),
  Members(
    image: 'assets/images/family_,members/family_younger_sister.png',
    jpName: 'imôto',
    enName: 'Younger sister',
    sound: "sounds/family_members/younger sister.wav",
  ),
  Members(
    image: 'assets/images/family_,members/family_son.png',
    jpName: 'musuko',
    enName: 'Son',
    sound: "sounds/family_members/son.wav",
  ),
  Members(
    image: 'assets/images/family_,members/family_daughter.png',
    jpName: 'musume',
    enName: 'Daughter',
    sound: "sounds/family_members/daughter.wav",
  ),
];