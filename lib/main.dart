import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

double totalSum = 0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myFeedbackText = "Could be better";
  var sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Application'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 200, 40, 50),
          child: Column(
            children: [
              Text(
                'How much did you like the ambience?', //feedback question #1
                style: TextStyle(
                    backgroundColor: Colors.black,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Text(
                    myFeedbackText,
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
              ),
              Slider(
                  value: sliderValue,
                  min: 0.0,
                  max: 5.0,
                  divisions: 5,
                  activeColor: Colors.red,
                  inactiveColor: Colors.blue,
                  onChanged: (newValue) {
                    setState(() {
                      sliderValue = newValue;
                      if (sliderValue == 0.0) {
                        myFeedbackText = "Bad";
                      }
                      if (sliderValue > 0.0 && sliderValue <= 1) {
                        myFeedbackText = "Could be better";
                      }
                      if (sliderValue > 1.0 && sliderValue <= 2.0) {
                        myFeedbackText = "Below average";
                      }
                      if (sliderValue > 2.0 && sliderValue <= 3.0) {
                        myFeedbackText = "Average";
                      }
                      if (sliderValue > 3.0 && sliderValue <= 4.0) {
                        myFeedbackText = "Good";
                      }
                      if (sliderValue > 4.0 && sliderValue <= 5.0) {
                        myFeedbackText = "Excellent";
                      }
                    });
                  }),
              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  child: Text('Your Rating : $sliderValue',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    totalSum = totalSum + sliderValue;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                  icon: Icon(Icons.keyboard_arrow_right),
                  label: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var myFeedbackText1 = "Could be better";
  var sliderValue1 = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Application'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 200, 40, 50),
          child: Column(
            children: [
              Text(
                'How was the sanitation quality?', //feedback question #2
                style: TextStyle(
                    backgroundColor: Colors.black,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Text(
                    myFeedbackText1,
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
              ),
              Slider(
                  value: sliderValue1,
                  min: 0.0,
                  max: 5.0,
                  divisions: 5,
                  activeColor: Colors.red,
                  inactiveColor: Colors.blue,
                  onChanged: (newValue) {
                    setState(() {
                      sliderValue1 = newValue;
                      if (sliderValue1 == 0.0) {
                        myFeedbackText1 = "Bad";
                      }
                      if (sliderValue1 > 0.0 && sliderValue1 <= 1) {
                        myFeedbackText1 = "Could be better";
                      }
                      if (sliderValue1 > 1.0 && sliderValue1 <= 2.0) {
                        myFeedbackText1 = "Below average";
                      }
                      if (sliderValue1 > 2.0 && sliderValue1 <= 3.0) {
                        myFeedbackText1 = "Average";
                      }
                      if (sliderValue1 > 3.0 && sliderValue1 <= 4.0) {
                        myFeedbackText1 = "Good";
                      }
                      if (sliderValue1 > 4.0 && sliderValue1 <= 5.0) {
                        myFeedbackText1 = "Excellent";
                      }
                    });
                  }),
              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  child: Text('Your Rating : $sliderValue1',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    totalSum = totalSum + sliderValue1;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  icon: Icon(Icons.keyboard_arrow_right),
                  label: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var myFeedbackText2 = "Could be better";
  var sliderValue2 = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Application'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 200, 40, 50),
          child: Column(
            children: [
              Text(
                'How was the food quality?', //feedback question #3
                style: TextStyle(
                    backgroundColor: Colors.black,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Text(
                    myFeedbackText2,
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
              ),
              Slider(
                  value: sliderValue2,
                  min: 0.0,
                  max: 5.0,
                  divisions: 5,
                  activeColor: Colors.red,
                  inactiveColor: Colors.blue,
                  onChanged: (newValue) {
                    setState(() {
                      sliderValue2 = newValue;
                      if (sliderValue2 == 0.0) {
                        myFeedbackText2 = "Bad";
                      }
                      if (sliderValue2 > 0.0 && sliderValue2 <= 1) {
                        myFeedbackText2 = "Could be better";
                      }
                      if (sliderValue2 > 1.0 && sliderValue2 <= 2.0) {
                        myFeedbackText2 = "Below average";
                      }
                      if (sliderValue2 > 2.0 && sliderValue2 <= 3.0) {
                        myFeedbackText2 = "Average";
                      }
                      if (sliderValue2 > 3.0 && sliderValue2 <= 4.0) {
                        myFeedbackText2 = "Good";
                      }
                      if (sliderValue2 > 4.0 && sliderValue2 <= 5.0) {
                        myFeedbackText2 = "Excellent";
                      }
                    });
                  }),
              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  child: Text('Your Rating : $sliderValue2',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    totalSum = totalSum + sliderValue2;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                  icon: Icon(Icons.keyboard_arrow_right),
                  label: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  var myFeedbackText3 = "Could be better";
  var sliderValue3 = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Application'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 200, 40, 50),
          child: Column(
            children: [
              Text(
                'How was the staff behavior?', //feedback question #4
                style: TextStyle(
                    backgroundColor: Colors.black,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Text(
                    myFeedbackText3,
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
              ),
              Slider(
                  value: sliderValue3,
                  min: 0.0,
                  max: 5.0,
                  divisions: 5,
                  activeColor: Colors.red,
                  inactiveColor: Colors.blue,
                  onChanged: (newValue) {
                    setState(() {
                      sliderValue3 = newValue;
                      if (sliderValue3 == 0.0) {
                        myFeedbackText3 = "Bad";
                      }
                      if (sliderValue3 > 0.0 && sliderValue3 <= 1) {
                        myFeedbackText3 = "Could be better";
                      }
                      if (sliderValue3 > 1.0 && sliderValue3 <= 2.0) {
                        myFeedbackText3 = "Below average";
                      }
                      if (sliderValue3 > 2.0 && sliderValue3 <= 3.0) {
                        myFeedbackText3 = "Average";
                      }
                      if (sliderValue3 > 3.0 && sliderValue3 <= 4.0) {
                        myFeedbackText3 = "Good";
                      }
                      if (sliderValue3 > 4.0 && sliderValue3 <= 5.0) {
                        myFeedbackText3 = "Excellent";
                      }
                    });
                  }),
              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  child: Text('Your Rating : $sliderValue3',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    totalSum = totalSum + sliderValue3;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                  icon: Icon(Icons.keyboard_arrow_right),
                  label: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  var myFeedbackText4 = "Could be better";
  var sliderValue4 = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Application'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 200, 40, 50),
          child: Column(
            children: [
              Text(
                'Rate the food waiting time', //feedback question #5
                style: TextStyle(
                    backgroundColor: Colors.black,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Text(
                    myFeedbackText4,
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
              ),
              Slider(
                  value: sliderValue4,
                  min: 0.0,
                  max: 5.0,
                  divisions: 5,
                  activeColor: Colors.red,
                  inactiveColor: Colors.blue,
                  onChanged: (newValue) {
                    setState(() {
                      sliderValue4 = newValue;
                      if (sliderValue4 == 0.0) {
                        myFeedbackText4 = "Bad";
                      }
                      if (sliderValue4 > 0.0 && sliderValue4 <= 1) {
                        myFeedbackText4 = "Could be better";
                      }
                      if (sliderValue4 > 1.0 && sliderValue4 <= 2.0) {
                        myFeedbackText4 = "Below average";
                      }
                      if (sliderValue4 > 2.0 && sliderValue4 <= 3.0) {
                        myFeedbackText4 = "Average";
                      }
                      if (sliderValue4 > 3.0 && sliderValue4 <= 4.0) {
                        myFeedbackText4 = "Good";
                      }
                      if (sliderValue4 > 4.0 && sliderValue4 <= 5.0) {
                        myFeedbackText4 = "Excellent";
                      }
                    });
                  }),
              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  child: Text('Your Rating : $sliderValue4',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    totalSum = totalSum + sliderValue4;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FifthPage()));
                  },
                  icon: Icon(Icons.keyboard_arrow_right),
                  label: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}

class FifthPage extends StatefulWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  var myFeedbackText5 = "Could be better";
  var sliderValue5 = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Application'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 200, 40, 50),
          child: Column(
            children: [
              Text(
                'Rate the cleanliness', //feedback question #5
                style: TextStyle(
                    backgroundColor: Colors.black,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Text(
                    myFeedbackText5,
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
              ),
              Slider(
                  value: sliderValue5,
                  min: 0.0,
                  max: 5.0,
                  divisions: 5,
                  activeColor: Colors.red,
                  inactiveColor: Colors.blue,
                  onChanged: (newValue) {
                    setState(() {
                      sliderValue5 = newValue;
                      if (sliderValue5 == 0.0) {
                        myFeedbackText5 = "Bad";
                      }
                      if (sliderValue5 > 0.0 && sliderValue5 <= 1) {
                        myFeedbackText5 = "Could be better";
                      }
                      if (sliderValue5 > 1.0 && sliderValue5 <= 2.0) {
                        myFeedbackText5 = "Below average";
                      }
                      if (sliderValue5 > 2.0 && sliderValue5 <= 3.0) {
                        myFeedbackText5 = "Average";
                      }
                      if (sliderValue5 > 3.0 && sliderValue5 <= 4.0) {
                        myFeedbackText5 = "Good";
                      }
                      if (sliderValue5 > 4.0 && sliderValue5 <= 5.0) {
                        myFeedbackText5 = "Excellent";
                      }
                    });
                  }),
              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  child: Text('Your Rating : $sliderValue5',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    totalSum = totalSum + sliderValue5;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SixthPage()));
                  },
                  icon: Icon(Icons.keyboard_arrow_right),
                  label: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}

class SixthPage extends StatefulWidget {
  const SixthPage({Key? key}) : super(key: key);

  @override
  _SixthPageState createState() => _SixthPageState();
}

class _SixthPageState extends State<SixthPage> {
  var myFeedbackText6 = "Could be better";
  var sliderValue6 = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Application'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 200, 40, 50),
          child: Column(
            children: [
              Text(
                'Rate the reservation process', //feedback question #6
                style: TextStyle(
                    backgroundColor: Colors.black,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Text(
                    myFeedbackText6,
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
              ),
              Slider(
                  value: sliderValue6,
                  min: 0.0,
                  max: 5.0,
                  divisions: 5,
                  activeColor: Colors.red,
                  inactiveColor: Colors.blue,
                  onChanged: (newValue) {
                    setState(() {
                      sliderValue6 = newValue;
                      if (sliderValue6 == 0.0) {
                        myFeedbackText6 = "Bad";
                      }
                      if (sliderValue6 > 0.0 && sliderValue6 <= 1) {
                        myFeedbackText6 = "Could be better";
                      }
                      if (sliderValue6 > 1.0 && sliderValue6 <= 2.0) {
                        myFeedbackText6 = "Below average";
                      }
                      if (sliderValue6 > 2.0 && sliderValue6 <= 3.0) {
                        myFeedbackText6 = "Average";
                      }
                      if (sliderValue6 > 3.0 && sliderValue6 <= 4.0) {
                        myFeedbackText6 = "Good";
                      }
                      if (sliderValue6 > 4.0 && sliderValue6 <= 5.0) {
                        myFeedbackText6 = "Excellent";
                      }
                    });
                  }),
              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  child: Text('Your Rating : $sliderValue6',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    totalSum = totalSum + sliderValue6;
                    if (totalSum >= 0 && totalSum <= 10) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LastPage1()));
                    }
                    if (totalSum > 10 && totalSum <= 20) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LastPage2()));
                    }
                    if (totalSum > 20 && totalSum <= 30) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LastPage3()));
                    }
                  },
                  icon: Icon(Icons.keyboard_arrow_right),
                  label: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}

class LastPage1 extends StatefulWidget {
  const LastPage1({Key? key}) : super(key: key);

  @override
  _LastPage1State createState() => _LastPage1State();
}

class _LastPage1State extends State<LastPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Result'),
        ),
        backgroundColor: Colors.red,
        body: Column(
          children: [
            Center(
                child: Padding(
                    padding: EdgeInsets.all(60),
                    child: Text(
                      'We are sorry for your inconvenience',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
            ElevatedButton.icon(
                onPressed: () {
                  totalSum = 0;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                icon: Icon(Icons.arrow_forward_sharp),
                label: Text('SUBMIT'))
          ],
        ));
  }
}

class LastPage2 extends StatefulWidget {
  const LastPage2({Key? key}) : super(key: key);

  @override
  _LastPage2State createState() => _LastPage2State();
}

class _LastPage2State extends State<LastPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Result'),
        ),
        backgroundColor: Colors.yellow,
        body: Column(
          children: [
            Center(
                child: Padding(
              padding: EdgeInsets.all(60),
              child: Text(
                'Hope we serve you better next time',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            ElevatedButton.icon(
                onPressed: () {
                  totalSum = 0;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                icon: Icon(Icons.arrow_forward_sharp),
                label: Text('SUBMIT'))
          ],
        ));
  }
}

class LastPage3 extends StatefulWidget {
  const LastPage3({Key? key}) : super(key: key);

  @override
  _LastPage3State createState() => _LastPage3State();
}

class _LastPage3State extends State<LastPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Result'),
        ),
        backgroundColor: Colors.green,
        body: Column(
          children: [
            Center(
                child: Padding(
              padding: EdgeInsets.all(60),
              child: Text(
                'We hope you come back next time',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            ElevatedButton.icon(
                onPressed: () {
                  totalSum = 0;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                icon: Icon(Icons.arrow_forward_sharp),
                label: Text('SUBMIT'))
          ],
        ));
  }
}
