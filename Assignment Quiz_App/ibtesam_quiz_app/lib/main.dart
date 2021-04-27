import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ibtesam_quiz_app/quiz.dart';
import 'dart:math';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/second': (context) => Home(),
      '/third': (context) => HomePage(),
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Widget example2 = SplashScreenView(
      home: Home(),
      duration: 5000,
      imageSize: 200,
      imageSrc: "Images/i.jpg",
      text: "Ibtesam Ahmad\nFA17-BCS-028",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.white,
        Colors.yellow,
        Colors.red,
        Colors.blue,
      ],
      backgroundColor: Colors.blueGrey[900],
    );
    return MaterialApp(
      title: 'Splash Screen',
      home: example2,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Quiz App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.0,
            ),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                hoverColor: Colors.blueGrey,
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  correct = 0;
                  index = 0;
                  questions = null;
                  correctAnswer = null;
                  difficulty = null;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
              ListTile(
                hoverColor: Colors.blueGrey,
                title: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUs()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 150.0,
                backgroundImage: AssetImage('Images/quiz_image.jpg'),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            FlatButton(
              hoverColor: Colors.blueGrey,
              onPressed: () {
                setState(() {
                  select = "boolean";
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new MyApp(),
                    ),
                  );
                });
              },
              color: Colors.blueGrey[900],
              textColor: Colors.black,
              child: Text(
                'True/False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 37.0,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            FlatButton(
              hoverColor: Colors.blueGrey,
              onPressed: () {
                select = 'multiple';
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new MyApp(),
                  ),
                );
              },
              color: Colors.blueGrey[900],
              textColor: Colors.black,
              child: Text(
                'Multiple Choice',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 37.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blueGrey[900]),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Quiz quiz;
  List<Results> results;
  Color c;
  Uri url = Uri.parse("https://opentdb.com/api.php?amount=20&&type=$select");
  Random random = Random();

  @override
  Future<void> fetchQuestions() async {
    var res = await http.get(url);
    var decRes = jsonDecode(res.body);
    print(decRes);
    c = Colors.black;
    quiz = Quiz.fromJson(decRes);
    results = quiz.results;
  }

  @override
  // void initState() {
  //   super.initState();
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Quiz App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40.0,
          ),
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              hoverColor: Colors.blueGrey,
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                correct = 0;
                index = 0;
                questions = null;
                correctAnswer = null;
                difficulty = null;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              title: Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUs()),
                );
              },
            ),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: fetchQuestions,
        child: FutureBuilder(
            future: fetchQuestions(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Text('Press button to start.');
                case ConnectionState.active:
                case ConnectionState.waiting:
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                case ConnectionState.done:
                  if (snapshot.hasError) return errorData(snapshot);
                  return questionList();
              }
              return null;
            }),
      ),
    );
  }

  Column errorData(AsyncSnapshot snapshot) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Error: ${snapshot.error}',
        ),
        SizedBox(
          height: 20.0,
        ),
        RaisedButton(
          child: Text("Try Again"),
          onPressed: () {
            fetchQuestions();
            setState(() {});
          },
        ),
      ],
    );
  }

  Column questionList() {
    ca = results[index].correctAnswer;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ExpansionTile(
            title: Text(
              results[index].question,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            children: results[index].allAnswers.map((m) {
              return FlatButton(
                  onPressed: () {
                    if (m == ca && index < 9) {
                      setState(() {
                        index = index + 1;
                        correct = correct + 1;
                      });
                    } else if (m != ca && index < 9) {
                      setState(() {
                        questions[index] = results[index].question;
                        correctAnswer[index] = results[index].correctAnswer;
                        difficulty[index] = '$m';
                        index = index + 1;
                      });
                    } else if (index == 9) {
                      setState(() {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => new AnswerScreen(),
                          ),
                        );
                      });
                    }
                  },
                  child: Text(
                    m,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ));
            }).toList(),
          ),
        ]);
  }
}

class AnswerScreen extends StatefulWidget {
  @override
  _AnswerScreenState createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Answer Screen',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.0,
            ),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                hoverColor: Colors.blueGrey,
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  correct = 0;
                  index = 0;
                  questions = null;
                  correctAnswer = null;
                  difficulty = null;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
              ListTile(
                hoverColor: Colors.blueGrey,
                title: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUs()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.blueGrey[900],
          child: ListView(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Text(
                    'Wrong Questions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              for (int i = 0; i < 10; i++)
                if (questions[i] != null)
                  Column(
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        child: Row(children: <Widget>[
                          Expanded(
                            child: Text(
                              '\nQuestion :     ${questions[i]}\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.black,
                                //decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        color: Colors.blueGrey[900],
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                '\nCorrect Answer :     ${correctAnswer[i]}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  //decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.blueGrey[900],
                        child: Row(children: <Widget>[
                          Expanded(
                            child: Text(
                              '\nYour Answer :     ${difficulty[i]}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.red,
                                //decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  )
            ],
          ),
        ),
      ),
    );
  }
}

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Contact Us',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40.0,
          ),
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              hoverColor: Colors.blueGrey,
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                correct = 0;
                index = 0;
                questions = null;
                correctAnswer = null;
                difficulty = null;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
            ListTile(
              hoverColor: Colors.blueGrey,
              title: Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUs()),
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('Images/i.jpg'),
              backgroundColor: Colors.blueGrey[900],
              radius: 150.0,
            ),
            Text(
              'Ibtesam Ahmad',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(
              'BSCs Student',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                letterSpacing: 5.0,
              ),
            ),
            Card(
              color: Colors.blueGrey[900],
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 30.0,
                ),
                title: Text(
                  '+923061793107',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blueGrey[900],
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 30.0,
                ),
                title: Text(
                  'ibtesamahmad75@gmail.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.blueGrey[900],
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30.0,
                ),
                title: Text(
                  'Vehari',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String showtimer = '28';
bool canceltimer = false;
int timer = 28;
String ca;
String select;
int index = 0;
int correct = 0;
var questions = new List(10);
var category = new List(10);
var correctAnswer = new List(10);
var allAnswers = new List(10);
var difficulty = new List(10);
var type = new List(10);
