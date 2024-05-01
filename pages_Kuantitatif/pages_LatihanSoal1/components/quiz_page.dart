// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:untitled/pages_Kuantitatif/pages_LatihanSoal1/components/quiz_card.dart';
import 'package:untitled/pages_Kuantitatif/pages_LatihanSoal1/components/quiz_controller.dart';
import 'package:untitled/pages_Kuantitatif/pages_LatihanSoal1/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizImage extends StatelessWidget {
  const QuizImage({super.key});

  @override
  Widget build(BuildContext context) {
    QuizControllerImage _quizController = Get.put(QuizControllerImage());
    QuizControllerImage _controller = Get.put(QuizControllerImage());
    return Scaffold(
      backgroundColor: purpleColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Text.rich(
                      TextSpan(
                        text: 'Quiz ${_quizController.quizNum.value}',
                        style: whiteTextStyle.copyWith(
                            fontSize: 24, fontWeight: bold),
                        children: [
                          TextSpan(
                            text: '/${_quizController.quiz.length}',
                            style: whiteTextStyle.copyWith(
                                fontSize: 18, fontWeight: bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _controller.nextQuiz,
                    child: Text(
                      'Next Quiz',
                      style: whiteTextStyle.copyWith(
                          fontSize: 16, fontWeight: bold),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: orangeColor,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _quizController.pageController,
                onPageChanged: _quizController.updateQuiz,
                itemCount: _quizController.quiz.length,
                itemBuilder: (context, index) =>
                    QuizCard(quiz: _quizController.quiz[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
