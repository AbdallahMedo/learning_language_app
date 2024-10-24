import 'package:audioplayers/audioplayers.dart';

class Numbers {
  final String sound;
  final String image;
  final String jpName;
  final String enName;

  Numbers({
    required this.sound,
    required this.image,
    required this.jpName,
    required this.enName,
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

final List<Numbers> number_items = [
  Numbers(
    image: 'assets/images/numbers/number_one.png',
    jpName: 'ichi',
    enName: 'One',
    sound: "sounds/numbers/number_one_sound.mp3",
  ),
  Numbers(
    image: 'assets/images/numbers/number_two.png',
    jpName: 'ni',
    enName: 'Two',
    sound: "sounds/numbers/number_two_sound.mp3",
  ),
  Numbers(
    image: 'assets/images/numbers/number_three.png',
    jpName: 'san',
    enName: 'Three',
    sound: "sounds/numbers/number_three_sound.mp3",
  ),
  Numbers(
    image: 'assets/images/numbers/number_four.png',
    jpName: 'shi',
    enName: 'Four',
    sound: "sounds/numbers/number_four_sound.mp3",
  ),
  Numbers(
    image: 'assets/images/numbers/number_five.png',
    jpName: 'go',
    enName: 'Five',
    sound: "sounds/numbers/number_five_sound.mp3",
  ),
  Numbers(
    image: 'assets/images/numbers/number_six.png',
    jpName: 'roku',
    enName: 'Six',
    sound: "sounds/numbers/number_six_sound.mp3",
  ),
  Numbers(
    image: 'assets/images/numbers/number_seven.png',
    jpName: 'shichi',
    enName: 'Seven',
    sound: "sounds/numbers/number_seven_sound.mp3",
  ),
  Numbers(
    image: 'assets/images/numbers/number_eight.png',
    jpName: 'hachi',
    enName: 'Eight',
    sound: "sounds/numbers/number_eight_sound.mp3",
  ),
  Numbers(
    image: 'assets/images/numbers/number_nine.png',
    jpName: 'kyū',
    enName: 'Nine',
    sound: "sounds/numbers/number_nine_sound.mp3",
  ),
  Numbers(
    image: 'assets/images/numbers/number_ten.png',
    jpName: 'jū',
    enName: 'Ten',
    sound: "sounds/numbers/number_ten_sound.mp3",
  ),
];


// List<Widget> getList(List<Numbers> number_item)
// {
//   List<Widget> itemList=[];
//   for(int i=0;i< number_item.length;i++)
//   {
//     itemList.add(Item(numbers: number_item[i]));
//   }
//   return itemList;
// }
