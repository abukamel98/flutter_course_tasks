import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});
  List QuestionsAnsers = [
    {
      "question": "what is 1+1",
      "answer": ["1", "2", "3", "4"],
      "trueAnswer": "2"
    },
    {
      "question": "what is 4+4",
      "answer": ["5", "6", "8", "7"],
      "trueAnswer": "8"
    },
    {
      "question": "what is 10+10",
      "answer": ["15", "20", "11", "12"],
      "trueAnswer": "20"
    },
    {
      "question": "what is 10+8",
      "answer": ["18", "26", "38", "47"],
      "trueAnswer": "18"
    },
  ];
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int num = 0;

  int correct = 0;

  bool isLastQuestionPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("quizapp"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.QuestionsAnsers[num]["question"],
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            for (int x = 0;
            x <
                (widget.QuestionsAnsers[num]["answer"] as List<String>)
                    .length;
            x++) ...[
              MyElevatedButton(
                answerIndex: x,
                onPress: (answerIndex) {
                  setState(() {

                    if(widget.QuestionsAnsers[num]["trueAnswer"] == widget.QuestionsAnsers[num]["answer"][answerIndex] && !isLastQuestionPressed ){
                      correct++;
                    }

                    if (num != widget.QuestionsAnsers.length-1) {
                      num++;
                    }else  {
                      isLastQuestionPressed = true;
                    }

                  });
                },
                text: widget.QuestionsAnsers[num]["answer"][x],
              )
            ],
            Container(
              child: isLastQuestionPressed
                  ? //check if loading is true or false
              Column(
                children: [
                  Text("correct ${correct}/${widget.QuestionsAnsers.length}"),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          num = 0;
                          correct = 0;
                          isLastQuestionPressed = false;
                        });
                      },
                      child: Text("reload")),
                ],
              )
                  : //show progress on loading = true
              Container(), //show this text on loading = false
            )
          ],
        ),
      ),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  final int answerIndex;
  final Function(int) onPress;
  final String text;
  const MyElevatedButton({
    super.key,
    required this.answerIndex,
    required this.onPress,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        onPress(answerIndex);
      },
      child: Text(text),
    );
  }
}


