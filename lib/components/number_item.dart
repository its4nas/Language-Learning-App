import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/number.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({super.key, required this.number});

  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        color: Colors.orange,
        child: Row(
          children: [
            Container(
              color: Color.fromARGB(255, 225, 202, 158),
              child: Image.asset(number.imagePath),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number.englishWord,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    number.japaneseWord,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                  onPressed: () 
                  {
                    try
                    {
                      AudioCache player = AudioCache(prefix: 'assets/sounds/numbers/');
                      player.play('number_one_sound.mp3');
                    }
                    catch(ex)
                    {
                      print("could not play sound");
                    }
                  },
                  icon: const Icon(Icons.play_arrow),
                  color: Colors.white,
                  iconSize: 30),
            ),
          ],
        ));
  }
}
