import 'package:untitled/pages_Kuantitatif/pages_LatihanSoal1/components/quiz_controller.dart';
import 'package:untitled/pages_Kuantitatif/pages_LatihanSoal1/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: use_key_in_widget_constructors
class QuizScore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    QuizControllerImage _qnController = Get.put(QuizControllerImage());
    return Scaffold(
      backgroundColor: purpleColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Correct Result',
              style: whiteTextStyle.copyWith(fontSize: 24, fontWeight: bold),
            ),
            Text(
              '${_qnController.numcheckAns}/${_qnController.quiz.length}',
              style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            ),
            const SizedBox(
              height: 60,
            ),
            TextButton(
              onPressed: () {
                Get.offAllNamed('/');
              },
              child: Text(
                'back',
                style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
