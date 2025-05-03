import 'package:flutter/material.dart';
import 'package:language_learning_app/components/number_item.dart';
import 'package:language_learning_app/models/number.dart';


class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Number> numbers = const [
    Number(
      englishWord: 'one',
      japaneseWord: 'ichi',
      imagePath: 'assets/images/numbers/number_one.png',
    ),
    Number(
      englishWord: 'two',
      japaneseWord: 'ni',
      imagePath: 'assets/images/numbers/number_two.png',
    ),
    Number(
      englishWord: 'three',
      japaneseWord: 'san',
      imagePath: 'assets/images/numbers/number_three.png',
    ),
    Number(
      englishWord: 'four',
      japaneseWord: 'shi',
      imagePath: 'assets/images/numbers/number_four.png',
    ),
    Number(
      englishWord: 'five',
      japaneseWord: 'go',
      imagePath: 'assets/images/numbers/number_five.png',
    ),
    Number(
      englishWord: 'six',
      japaneseWord: 'roku',
      imagePath: 'assets/images/numbers/number_six.png',
    ),
    Number(
      englishWord: 'seven',
      japaneseWord: 'nana',
      imagePath: 'assets/images/numbers/number_seven.png',
    ),
    Number(
      englishWord: 'eight',
      japaneseWord: 'hachi',
      imagePath: 'assets/images/numbers/number_eight.png',
    ),
    Number(
      englishWord: 'nine',
      japaneseWord: 'kyuu',
      imagePath: 'assets/images/numbers/number_nine.png',
    ),
    Number(
      englishWord: 'ten',
      japaneseWord: 'juu',
      imagePath: 'assets/images/numbers/number_ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return NumberItem(number: numbers[index]);
        },
      ),
    );
  }
}
