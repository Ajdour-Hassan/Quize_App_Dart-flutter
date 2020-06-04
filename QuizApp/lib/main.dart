import 'package:flutter/material.dart' ;
import './quiz.dart' ;
import './result.dart' ;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green[300]),
      home: _Home()
    );
  }
}


class _Home extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<_Home> {

  // create List/ items

  final _questions = const // => means that list would never change!
  // list contnatins on a map (String, Object) => and every single key has a value !
  //List<Map<String, Object>
  // List = question
  // Map : contain on =>
  //(String : text , Object : score) ;

    [
    {'questionkey' : 'what is your favourite color?', // string value
     'answerskey' : [{'text':'green', 'score': 5},
                     {'text' : 'white', 'score': 4},
                     {'text' : 'blue' , 'score' : 4},
                     {'text' : 'black', 'score': 2},
                     ],
                     }, // list value
      {'questionkey' : 'what\'s  your favourite footnbal ?', 
     'answerskey' : [{'text':'barca', 'score': 5},
                     {'text' : 'liverpol', 'score': 4},
                     {'text' : 'Real madrrid' , 'score' : 3},
                     {'text' : 'bayer munich', 'score': 3},
                     ],
                     }, // list value
    
    {'questionkey' : 'what is your favourite city?',
     'answerskey' : [{'text':'Roma', 'score': 5},
                     {'text' : 'london', 'score': 5},
                     {'text' : 'Paris' , 'score' : 5},
                     {'text' : 'New york', 'score': 5},
                     ],
                     },  // list value

  {'questionkey' : 'what is your favourite programing langauge?', 
     'answerskey' : [{'text':'python', 'score': 5},
                     {'text' : 'Dart', 'score': 5},
                     {'text' : 'Javascript' , 'score' : 4},
                     {'text' : 'C/C++', 'score': 5},
                     ],
                     },  // list value
      
      
 
   ]; // list


  var _questionindex = 0;
  int _totalscore = 0 ;

void restart() {
  setState(() {
    _totalscore = 0 ;
    _questionindex = 0 ;
  });
}


  void _answerQuestion(int score) {
   
     // score = ['score'] ;

    _totalscore = _totalscore + score ;

    setState(() {

    _questionindex = _questionindex + 1 ;

    });

    print(_questionindex);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text('QuizeApp')),

      body: _questionindex < _questions.length ?

      Quiz(answerQuestion: _answerQuestion ,
           questionindex:  _questionindex ,
           questions: _questions,
           )
    
      : Results(_totalscore, restart),

      );
  }

}
