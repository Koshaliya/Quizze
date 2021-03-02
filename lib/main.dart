import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: Text('Quizze'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(120, 208, 198, 100),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:5.0),
            child:QuizPage(),
      ),))
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper=[ ];
  List<String> questions=[
    'you can led a life ?',
    'can you give me coffee?',
    'can you go to school?'
   ];
   List<bool> answers=[
    true,
    true,
    false
   ];

   int quesNumber=0;

  @override
  Widget build(BuildContext context) {
    void increaseQues(){
      setState(() {
        quesNumber++;
      });
      
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      
      children: [
        
      Expanded(
        flex: 6,
        
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(questions[quesNumber],
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0
        )
        ),
                ),
              ),
      ),
      Expanded(
        
        flex: 1,
          child: Padding(
            
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
          onPressed: (){
            bool correctAns = answers[quesNumber];

            if(correctAns==true)
            {
              print('user got it correct');
            }
            else{
              print('wrong');
            }
            increaseQues();
          },
          color: Colors.green,
          child: Text('True',
          textAlign: TextAlign.center,
          style: TextStyle(
            
            color: Colors.white,
            fontSize: 20.0
          )
          ),
        ),
            )
      ),
      Expanded(
        flex: 1,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
          onPressed: (){
            bool correctAns = answers[quesNumber];

            if(correctAns==false)
            {
              print('user got it correct');
            }
            else{
              print('wrong');
            }
            increaseQues();
          },
          
          color: Colors.red,
          child: Text('Flase',
          textAlign: TextAlign.center,
          style: TextStyle(
            
            color: Colors.white,
            fontSize: 20.0
          )
          ),
        ),
            )
      
      ),
      Row(
        children: scoreKeeper
        
      )
    ]);
  }
}

/*
floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Go front',
        child: Icon(Icons.accessible_forward_sharp),
      ),
Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Color.fromRGBO(197, 255, 245, 100),
              Color.fromRGBO(255, 216, 197, 100),
              Color.fromRGBO(197, 207, 255, 100),
            ]))      
      */
