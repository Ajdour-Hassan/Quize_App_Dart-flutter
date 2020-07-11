import 'package:flutter/material.dart';
import './question.dart' ;
import './answer.dart' ;


class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
   
  final int questionindex ;

  final Function answerQuestion ;

  Quiz({@required this.questions, @required this.questionindex, @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return  Column (
      children:[

      Question(questions[questionindex]['questionkey']),

      ...(questions[questionindex]['answerskey'] as List<Map<String, Object>>).map((answer) {
        //  answer map here takes (String , Object ) => (onPressed(slecthandler) , text(answerstext))
      return Answers(() => answerQuestion(answer['score']) , answer['text'] ) ;
      }).toList()

      ],
    );
  }
}