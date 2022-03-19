import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key, required this.score}) : super(key: key);
  final int score;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$score/10'),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('retake'),
            ),
          ],
        ),
      ),
    );
  }
}
