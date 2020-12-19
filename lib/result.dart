import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function selectHandler;

  Result(this.totalScore, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(totalScore.toString()),
      FlatButton(onPressed: selectHandler, child: Text('Restart the quiz'))
    ]));
  }
}
