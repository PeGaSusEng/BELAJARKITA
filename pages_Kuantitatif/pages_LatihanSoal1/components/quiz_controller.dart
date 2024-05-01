// ignore_for_file: deprecated_member_use, unnecessary_this, duplicate_ignore, override_on_non_overriding_member

import 'package:untitled/pages_Kuantitatif/pages_LatihanSoal1/components/quiz.dart';
import 'package:untitled/pages_Kuantitatif/pages_LatihanSoal1/components/quiz_score.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: duplicate_ignore
class QuizControllerImage extends GetxController
    with SingleGetTickerProviderMixin {
  // ignore: prefer_final_fields
  List<Quiz> _quiz = quiz_exam
      .map(
        (quiz) => Quiz(
            id: quiz['id'],
            quiz: quiz['quiz'],
            ask: quiz['ask'],
            optional: quiz['optional'],
            answer: quiz['answer']),
      )
      .toList();

  // ignore: unnecessary_this
  List<Quiz> get quiz => this._quiz;

  late int _selectAns;
  int get selectAns => this._selectAns;

  late int _checkAns;
  int get checkAns => this._checkAns;

  bool _answered = false;
  bool get answered => this._answered;

  late PageController _quizPage;
  PageController get pageController => this._quizPage;

  // ignore: prefer_final_fields
  RxInt _quizNum = 1.obs;
  RxInt get quizNum => this._quizNum;

  int _numCheckAns = 0;
  int get numcheckAns => this._numCheckAns;

  @override
  void onInit() {
    _quizPage = PageController();
    super.onInit();
  }

  // ignore: override_on_non_overriding_member
  @override
  void correctAns(Quiz quiz, int selectedIndex, BuildContext context) {
    _answered = true;
    _checkAns = quiz.answer;
    _selectAns = selectedIndex;

    if (_checkAns == _selectAns) {
      _numCheckAns++;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(milliseconds: 200),
          backgroundColor: Colors.green,
          content: Text("Correct!"),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(milliseconds: 200),
          backgroundColor: Colors.red,
          content: Text("Incorrect!"),
        ),
      );
    }
    update();

    Future.delayed(const Duration(seconds: 2), () {
      nextQuiz();
    });
  }

  void nextQuiz() {
    if (_quizNum.value != _quiz.length) {
      _answered = false;
      _quizPage.nextPage(
          duration: const Duration(microseconds: 250),
          curve: Curves.fastOutSlowIn);
    } else {
      Get.to(() => QuizScore());
    }
  }

  void updateQuiz(int index) {
    _quizNum.value = index + 1;
  }
}
