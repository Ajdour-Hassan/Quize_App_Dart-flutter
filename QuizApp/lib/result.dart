import 'package:flutter/material.dart' ;

class Results extends StatelessWidget {

  final Function restarthandler ;
  final int resultscore ;

  Results(this.resultscore , this.restarthandler);

// Getter is mixed of method and pointer feature in dart :
// Getter here return only to String!
  String get resultPhrase {

    String resultText ;

    if (resultscore <= 10) {
      resultText = 'avrage! final score:$resultscore/20' ;
    } else if (resultscore <= 12) {
      resultText = 'Good';
    }  else if (resultscore <= 14) {
      resultText = 'Very Good! final score:$resultscore/20' ;
    } else if(resultscore <= 18 || resultscore <= 19 ){
      resultText = 'Excellent job! final score:$resultscore /20' ;
    } else {
      resultText = 'you failed!'  ;
    }

    return  resultText;

  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column (
          children: <Widget> [
          Text(resultPhrase,
          style: TextStyle(fontSize:28.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
          FlatButton(child: Text('Restart Quiiz!', style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          backgroundColor: Colors.blue,
          ),),
          onPressed: restarthandler ,)
    ],
    ),
    );
  }
}
