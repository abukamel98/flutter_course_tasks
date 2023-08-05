import 'package:flutter/material.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int mainindex = 0;
  int corrects = 0;
  int numberofQuestion = 0;
  bool errormassege = false;
  int? yourChoiceindex;
  bool quizappfinished = false;
  bool isAnswer = false;
  List questions = [
    "what if my favorite food",
    'what is my favorite color',
    'what is my job ',
  ];
  List Anwsers = [
    ["mensaf", "burger", 'pizza'],
    ['blue', 'red', 'black'],
    ['doctor', 'worker', 'Engineer'],
  ];
  List AnwsersIcons = [
    [
      "https://upload.wikimedia.org/wikipedia/commons/2/2c/%D8%B3%D8%AF%D8%B1_%D9%85%D9%86%D8%B3%D9%81_02.jpg",
      "https://img.freepik.com/free-photo/front-view-tasty-meat-burger-with-cheese-salad-dark-background_140725-89597.jpg",
      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Pizza_%281%29.jpg/1200px-Pizza_%281%29.jpg'
    ],
    [
      'https://upload.wikimedia.org/wikipedia/commons/e/e4/Color-blue.JPG',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Colour_red.jpg/1200px-Colour_red.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/A_black_image.jpg/1200px-A_black_image.jpg'
    ],
    [
      'https://img.freepik.com/free-photo/attractive-young-male-nutriologist-lab-coat-smiling-against-white-background_662251-2960.jpg',
      'https://st2.depositphotos.com/1017986/42985/i/450/depositphotos_429851104-stock-photo-happy-male-worker-or-builder.jpg',
      'https://st5.depositphotos.com/10539404/64672/i/600/depositphotos_646723908-stock-photo-asian-engineer-handsome-man-architect.jpg'
    ],
  ];
  List correctAnswer = ["mensaf", "blue", 'Engineer'];

  @override
  Widget build(BuildContext context) {
    double heighOffDevice = MediaQuery.of(context).size.height;
    double widthOffDevice = MediaQuery.of(context).size.width;
    return MaterialApp(
        theme: ThemeData.light(),
        home: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: heighOffDevice * 0.15,
                  ),
                  if (quizappfinished == true) ...[
                    Text(
                      "congratulation you finish the quiz app your score is $corrects /${questions.length}",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          mainindex = 0;
                          numberofQuestion = 0;
                          quizappfinished = false;
                          corrects=0;
                        });
                      },
                      child: Text('try again'),
                    )
                  ],
                  if (quizappfinished == false) ...[
                    Text(
                      questions[mainindex],
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "Anwser and get points",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    SizedBox(
                      height: heighOffDevice * 0.1,
                    ),
                  ],
                  Column(
                    children: [
                      Text("$numberofQuestion /${questions.length}"),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Container(
                              width: 110,
                              height: 5,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black54),
                                  color: numberofQuestion > 0
                                      ? Colors.green
                                      : Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 110,
                              height: 5,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black54),
                                  color: numberofQuestion > 1
                                      ? Colors.green
                                      : Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 110,
                              height: 5,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black54),
                                  color: numberofQuestion > 2
                                      ? Colors.green
                                      : Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  if (quizappfinished == false) ...[
                    if (errormassege == true)
                      Text(
                        "*please choice one option* ",
                        style: TextStyle(color: Colors.red),
                      ),
                    SizedBox(
                      height: 5,
                    ),
                    for (int i = 0; i < Anwsers[mainindex].length; i++) ...[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              yourChoiceindex = i;
                              if (errormassege == true) errormassege = false;
                              if(correctAnswer[mainindex]==Anwsers[mainindex][i] && !isAnswer) {
                                corrects++;
                                isAnswer = true;
                              }
                            });
                          },
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5)),
                                color: i != yourChoiceindex
                                    ? Colors.white
                                    : Colors.green,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        child: Image.network(
                                          AnwsersIcons[mainindex][i],
                                          fit: BoxFit.cover,
                                          width: 50,
                                          height: 50,
                                          errorBuilder: (ctx,err,trace){
                                            return Text("no imternet");
                                          },
                                        ),
                                      )),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    Anwsers[mainindex][i],
                                    style: TextStyle(
                                        color: i != yourChoiceindex
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                    Spacer(),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (yourChoiceindex != null &&
                                mainindex <= questions.length - 1) {
                              mainindex++;
                              yourChoiceindex = null;
                              errormassege = false;
                              numberofQuestion++;
                              print(mainindex);
                              print(" q  $numberofQuestion");
                              isAnswer = false;
                            } else if (yourChoiceindex == null)
                              errormassege = true;
                            if (mainindex > questions.length - 1)
                              quizappfinished = true;
                          });
                        },
                        child: Text("Next"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]
                ],
              ),
            ),
          ),
        ));
  }
}
