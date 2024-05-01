import 'package:untitled/pages_Kuantitatif/pages_LatihanSoal1/components/optional.dart';
import 'package:untitled/pages_Kuantitatif/pages_LatihanSoal1/components/quiz.dart';
import 'package:untitled/pages_Kuantitatif/pages_LatihanSoal1/components/quiz_controller.dart';
import 'package:untitled/pages_Kuantitatif/pages_LatihanSoal1/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({
    Key? key,
    required this.quiz,
  }) : super(key: key);

  final Quiz quiz;

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    QuizControllerImage _controller = Get.put(QuizControllerImage());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              quiz.quiz,
              height: 300,
              width: 300,
            ),
            Text(
              quiz.ask,
              style: whiteTextStyle.copyWith(fontSize: 12, fontWeight: bold),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
              children: [
                ...List.generate(quiz.optional.length, (index) {
                  // ignore: sized_box_for_whitespace
                  return Container(
                    height: 110,
                    child: Optional(
                      index: index,
                      image: quiz.optional[index],
                      press: () => _controller.correctAns(quiz, index, context),
                    ),
                  );
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
