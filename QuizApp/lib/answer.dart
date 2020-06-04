import 'package:flutter/material.dart' ;

class Answers extends StatelessWidget {
  // callback a function in other widget => means that what stored inside it has to be a pointer
  final Function selectHandler;
  
  final String answertext;

  Answers(this.selectHandler , this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:RaisedButton(
      child: Text(answertext),
      textColor: Colors.white,
      color: Colors.blue[500],
      onPressed: selectHandler),
    );
  }
}