import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    //String resultText;
    String Description;

    if (resultScore <= 9) {
      // resultText = "Trustworthy and sometimes shy";
      Description =
          "You are a Quite and a shy person, you keep to yourself alot, you are also a trutworthy person";
    } else if (resultScore <= 17) {
      // resultText = "Loyal";
      Description =
          "You are extremely Loyal, You can do anything for your friends and will always stick by them ";
    } else if (resultScore <= 26) {
      // resultText = "Outgoing and funny";
      Description =
          "You are quite loud and very funny, you love to grab life by the horns and get everything out of it! ";
    } else if (resultScore > 26) {
      //resultText = "Witty and born Leader";
      Description =
          "You are extremely charismatic and enjoy being the center of the attention, Always the one leaading!";
    }

    return Description;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(child: Text("Restart Quiz!",
        ),
        textColor: Colors.black,
        onPressed: resetHandler,
        )
      ],
    ));
  }
}
