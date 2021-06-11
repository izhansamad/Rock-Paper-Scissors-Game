import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var userscore = 0;
  var computerscore = 0;
  var userselect = 0;
  var computerselect = 0;
  var result = "";
  var computerchose = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.yellow[800],
          title: Text(
            'ROCK PAPER SCISSORS GAME',
            style: TextStyle(
                color: Colors.red[700],
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 80.0, 20.0, 0.0),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your Score:',
                        style: TextStyle(
                          color: Colors.orange[900],
                          fontSize: 30.0,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        '$userscore',
                        style: TextStyle(
                          color: Colors.orange[900],
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Computer Score:',
                        style: TextStyle(
                          color: Colors.orange[900],
                          fontSize: 30.0,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        '$computerscore',
                        style: TextStyle(
                          color: Colors.orange[900],
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  new ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.orange[600]),
                    ),
                    child: new Text("Reset Score"),
                    onPressed: () {
                      setState(() {
                        userscore = 0;
                        computerscore = 0;
                        result = "";
                        computerchose = "";
                      });
                    },
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    'Choose Rock, Paper, or Scissors:',
                    style: TextStyle(
                      color: Colors.red[800],
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            userselect = 1;
                            print('User $userselect');
                            Random random = new Random();
                            computerselect = random.nextInt(3) + 1;
                            print('Computer $computerselect');
                            if (userselect == 1 && computerselect == 3) {
                              setState(() {
                                userscore++;
                                result = "You WIN! ";
                                computerchose = "Computer chose Scissors.";
                              });
                            }
                            if (userselect == 1 && computerselect == 2) {
                              setState(() {
                                computerscore++;
                                result = "You Lose! ";
                                computerchose = "Computer chose Paper.";
                              });
                            }
                            if (userselect == computerselect) {
                              setState(() {
                                result = "DRAW!";
                                computerchose = "";
                              });
                            }
                          },
                          splashColor: Colors.white.withOpacity(0.5),
                          child: Ink(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.orange[700], width: 2),
                              image: DecorationImage(
                                image: AssetImage('assets/rock.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            userselect = 2;
                            print('User $userselect');
                            Random random = new Random();
                            computerselect = random.nextInt(3) + 1;
                            print('Computer $computerselect');
                            if (userselect == 2 && computerselect == 1) {
                              setState(() {
                                userscore++;
                                result = "You WIN! ";
                                computerchose = "Computer chose Rock.";
                              });
                            }
                            if (userselect == 2 && computerselect == 3) {
                              setState(() {
                                computerscore++;
                                result = "You Lose! ";
                                computerchose = "Computer chose Scissors.";
                              });
                            }
                            if (userselect == computerselect) {
                              setState(() {
                                result = "DRAW!";
                                computerchose = "";
                              });
                            }
                          },
                          splashColor: Colors.white.withOpacity(0.5),
                          child: Ink(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.orange[700], width: 2),
                              image: DecorationImage(
                                image: AssetImage('assets/paper.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                             userselect = 3;
                            print('User $userselect');
                            Random random = new Random();
                            computerselect = random.nextInt(3) + 1;
                            print('Computer $computerselect');
                            if (userselect == 3 && computerselect == 2) {
                              setState(() {
                                userscore++;
                                result = "You WIN! ";
                                computerchose = "Computer chose Paper.";
                              });
                            }
                            if (userselect == 3 && computerselect == 1) {
                              setState(() {
                                computerscore++;
                                result = "You Lose! ";
                                computerchose = "Computer chose Rock.";
                              });
                            }
                            if (userselect == computerselect) {
                              setState(() {
                                result = "DRAW!";
                                computerchose = "";
                              });
                            }
                          },
                          splashColor: Colors.white.withOpacity(0.5),
                          child: Ink(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.orange[700], width: 2),
                              image: DecorationImage(
                                image: AssetImage('assets/scissors.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(children: [
                    Container(
                      child: Text('$result',
                          style: TextStyle(
                            color: Colors.red[800],
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      child: Text('$computerchose',
                          style: TextStyle(
                            color: Colors.red[600],
                            fontSize: 22.0,
                          )),
                    )
                  ]),
                ]),
          ),
        ));
  }
}
