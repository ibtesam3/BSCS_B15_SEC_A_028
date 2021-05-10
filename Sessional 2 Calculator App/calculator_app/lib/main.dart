import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/second': (context) => Home(),
      '/third': (context) => HomePageSimple(),
      '/fourth': (context) => HomePageHard(),
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
      duration: 8000,
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
        Colors.purple,
        Colors.white,
        Colors.yellow,
        Colors.red,
        Colors.blue,
      ],
      backgroundColor: Colors.blueGrey,
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
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Calculator App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.0,
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.home),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.calculate),
                hoverColor: Colors.blueGrey,
                title: Text(
                  'Simple',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePageSimple()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.calculate),
                hoverColor: Colors.blueGrey,
                title: Text(
                  'Hard',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePageHard()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_page),
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
                backgroundImage: AssetImage('Images/calculator_image.jpg'),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            FlatButton(
              hoverColor: Colors.blueGrey,
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new HomePageSimple(),
                    ),
                  );
                });
              },
              color: Colors.blueGrey[900],
              textColor: Colors.black,
              child: Text(
                'Simple',
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
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new HomePageHard(),
                  ),
                );
              },
              color: Colors.blueGrey[900],
              textColor: Colors.black,
              child: Text(
                'Hard',
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

class HomePageSimple extends StatefulWidget {
  @override
  State createState() => new HomePageSimpleState();
}

class HomePageSimpleState extends State<HomePageSimple> {
  List<String> operators = ["+", "-", "×", "÷"];
  List<String> hist = [];
  var history = "0", output = "0", answer = 0.0;
  void click1() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "1";
      } else {
        output = "1";
      }
    });
  }

  void click2() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "2";
      } else {
        output = "2";
      }
    });
  }

  void click3() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "3";
      } else {
        output = "3";
      }
    });
  }

  void click4() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "4";
      } else {
        output = "4";
      }
    });
  }

  void click5() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "5";
      } else {
        output = "5";
      }
    });
  }

  void click6() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "6";
      } else {
        output = "6";
      }
    });
  }

  void click7() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "7";
      } else {
        output = "7";
      }
    });
  }

  void click8() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "8";
      } else {
        output = "8";
      }
    });
  }

  void click9() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "9";
      } else {
        output = "9";
      }
    });
  }

  void click0() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "0";
      } else {
        output = "0";
      }
    });
  }

  void clickDot() {
    setState(() {
      output += ".";
    });
  }

  void clear() {
    setState(() {
      history = "";
      output = "0";
      answer = 0.0;
      hist = [];
    });
  }

  void sign() {
    setState(() {
      if (double.parse(output) == 0.0) {
      } else {
        if (output[0] == '-') {
          output = output.substring(1);
        } else {
          output = '-' + output;
        }
      }
    });
  }

  void percent() {
    setState(() {
      double percent = 0.0;
      percent = answer / 100;
      history = answer.toString() + " ÷ 100 =";
      output = percent.toString();
    });
  }

  String getTape() {
    return hist.join(" ");
  }

  bool isOperator(String s) {
    return (operators.contains(s));
  }

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.parse(s) != null;
  }

  void equals() {
    setState(() {
      if (hist.length <= 3) {
        hist.add(output);
      }
      history = getTape() + " =";
      var opr1, opr2, op;
      opr1 = double.parse(hist.removeAt(0));
      op = hist.removeAt(0);
      opr2 = double.parse(hist.removeAt(0));
      switch (op) {
        case "+":
          answer = opr1 + opr2;
          break;
        case "-":
          answer = opr1 - opr2;
          break;
        case "×":
          answer = opr1 * opr2;
          break;
        case "÷":
          answer = opr1 / opr2;
          break;
        default:
      }
      output = answer.toString();
      hist.insert(0, answer.toString());
    });
  }

  void add() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("+");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }

  void sub() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("-");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }

  void div() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("÷");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }

  void mul() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("×");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(
            'Calculator App',
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              hoverColor: Colors.blueGrey,
              title: Text(
                'Simple',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageSimple()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              hoverColor: Colors.blueGrey,
              title: Text(
                'Hard',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageHard()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
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
      backgroundColor: Colors.blueGrey,
      body: new Container(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.only(top: 25.0, right: 15.0),
                child: new Text(
                  "$history",
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w200,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
              new Padding(
                padding:
                    new EdgeInsets.only(top: 15.0, right: 15.0, bottom: 15.0),
                child: new Text(
                  "$output",
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.w100,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 15.0, left: 5.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new RawMaterialButton(
                        onPressed: clear,
                        child: new Icon(
                          Icons.block,
                          size: 35.0,
                        ),
                        constraints: BoxConstraints.tightFor(width: 150.0),
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45.0)),
                        elevation: 2.0,
                        fillColor: Colors.red[700],
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 15.0, bottom: 15.0, right: 15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: percent,
                        child: new Text(
                          "%",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        constraints: BoxConstraints.tightFor(width: 150.0),
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45.0)),
                        elevation: 2.0,
                        fillColor: Colors.red[700],
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 15.0, bottom: 15.0, right: 15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: div,
                        child: new Text(
                          "÷",
                          style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.red[700],
                              fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.white,
                        highlightColor: Colors.red[100],
                        splashColor: Colors.red[100],
                        padding: const EdgeInsets.all(15.0),
                      )
                    ]),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 15.0, left: 5.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new RawMaterialButton(
                        onPressed: click1,
                        child: new Text(
                          "1",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: click2,
                        child: new Text(
                          "2",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: click3,
                        child: new Text(
                          "3",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: mul,
                        child: new Text(
                          "×",
                          style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.red[700],
                              fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.white,
                        highlightColor: Colors.red[100],
                        splashColor: Colors.red[100],
                        padding: const EdgeInsets.all(15.0),
                      )
                    ]),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 15.0, left: 5.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new RawMaterialButton(
                        onPressed: click4,
                        child: new Text(
                          "4",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: click5,
                        child: new Text(
                          "5",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: click6,
                        child: new Text(
                          "6",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: sub,
                        child: new Text(
                          "-",
                          style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.red[700],
                              fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.white,
                        highlightColor: Colors.red[100],
                        splashColor: Colors.red[100],
                        padding: const EdgeInsets.all(15.0),
                      )
                    ]),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 15.0, left: 5.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new RawMaterialButton(
                        onPressed: click7,
                        child: new Text(
                          "7",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: click8,
                        child: new Text(
                          "8",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: click9,
                        child: new Text(
                          "9",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: add,
                        child: new Text(
                          "+",
                          style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.red[700],
                              fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.white,
                        highlightColor: Colors.red[100],
                        splashColor: Colors.red[100],
                        padding: const EdgeInsets.all(15.0),
                      )
                    ]),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 15.0, left: 5.0, bottom: 6.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new RawMaterialButton(
                        onPressed: click0,
                        child: new Text(
                          "0",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        constraints: BoxConstraints.tightFor(width: 200.0),
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45.0)),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 15.0, bottom: 15.0, right: 15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: clickDot,
                        child: new Text(
                          ".",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: equals,
                        child: new Text(
                          "=",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.red[700],
                        padding: const EdgeInsets.all(15.0),
                      )
                    ]),
              ),
            ]),
      ),
    );
  }
}

class HomePageHard extends StatefulWidget {
  @override
  State createState() => new HomePageHardState();
}

class HomePageHardState extends State<HomePageHard> {
  List<String> operators = ["+", "-", "×", "÷"];
  List<String> hist = [];
  var history = "0", output = "0", answer = 0.0;
  void click1() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "1";
      } else {
        output = "1";
      }
    });
  }

  void click2() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "2";
      } else {
        output = "2";
      }
    });
  }

  void click3() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "3";
      } else {
        output = "3";
      }
    });
  }

  void click4() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "4";
      } else {
        output = "4";
      }
    });
  }

  void click5() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "5";
      } else {
        output = "5";
      }
    });
  }

  void click6() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "6";
      } else {
        output = "6";
      }
    });
  }

  void click7() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "7";
      } else {
        output = "7";
      }
    });
  }

  void click8() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "8";
      } else {
        output = "8";
      }
    });
  }

  void click9() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "9";
      } else {
        output = "9";
      }
    });
  }

  void click0() {
    setState(() {
      if (double.parse(output) != 0.0) {
        output += "0";
      } else {
        output = "0";
      }
    });
  }

  void clickDot() {
    setState(() {
      output += ".";
    });
  }

  void clear() {
    setState(() {
      history = "";
      output = "0";
      answer = 0.0;
      hist = [];
    });
  }

  void sign() {
    setState(() {
      if (double.parse(output) == 0.0) {
      } else {
        if (output[0] == '-') {
          output = output.substring(1);
        } else {
          output = '-' + output;
        }
      }
    });
  }

  void percent() {
    setState(() {
      double percent = 0.0;
      percent = answer / 100;
      history = answer.toString() + " ÷ 100 =";
      output = percent.toString();
    });
  }

  String getTape() {
    return hist.join(" ");
  }

  bool isOperator(String s) {
    return (operators.contains(s));
  }

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.parse(s) != null;
  }

  void equals() {
    setState(() {
      if (hist.length <= 3) {
        hist.add(output);
      }
      history = getTape() + " =";
      var opr1, opr2, op;
      opr1 = double.parse(hist.removeAt(0));
      op = hist.removeAt(0);
      opr2 = double.parse(hist.removeAt(0));
      switch (op) {
        case "+":
          answer = opr1 + opr2;
          break;
        case "-":
          answer = opr1 - opr2;
          break;
        case "×":
          answer = opr1 * opr2;
          break;
        case "÷":
          answer = opr1 / opr2;
          break;
        default:
      }
      output = answer.toString();
      hist.insert(0, answer.toString());
    });
  }

  void add() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("+");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }

  void sub() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("-");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }

  void div() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("÷");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }

  void mul() {
    setState(() {
      answer = double.parse(output);
      hist.add(output);
      hist.add("×");
      if (hist.length >= 3) {
        output = "0";
        equals();
      }
      output = "0";
      history = getTape();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(
            'Calculator App',
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              hoverColor: Colors.blueGrey,
              title: Text(
                'Simple',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageSimple()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              hoverColor: Colors.blueGrey,
              title: Text(
                'Hard',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageHard()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
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
      backgroundColor: Colors.blueGrey,
      body: new Container(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.only(top: 25.0, right: 15.0),
                child: new Text(
                  "$history",
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w200,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
              new Padding(
                padding:
                    new EdgeInsets.only(top: 15.0, right: 15.0, bottom: 15.0),
                child: new Text(
                  "$output",
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.w100,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 15.0, left: 5.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new RawMaterialButton(
                        onPressed: clear,
                        child: new Icon(
                          Icons.block,
                          size: 35.0,
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.red[700],
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: sign,
                        child: new Text(
                          "±",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.red[700],
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: percent,
                        child: new Text(
                          "%",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.red[700],
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: div,
                        child: new Text(
                          "÷",
                          style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.red[700],
                              fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.white,
                        highlightColor: Colors.red[100],
                        splashColor: Colors.red[100],
                        padding: const EdgeInsets.all(15.0),
                      )
                    ]),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 15.0, left: 5.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new RawMaterialButton(
                        onPressed: click1,
                        child: new Text(
                          "1",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: click2,
                        child: new Text(
                          "2",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: click3,
                        child: new Text(
                          "3",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: mul,
                        child: new Text(
                          "×",
                          style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.red[700],
                              fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.white,
                        highlightColor: Colors.red[100],
                        splashColor: Colors.red[100],
                        padding: const EdgeInsets.all(15.0),
                      )
                    ]),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 15.0, left: 5.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new RawMaterialButton(
                        onPressed: click4,
                        child: new Text(
                          "4",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: click5,
                        child: new Text(
                          "5",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: click6,
                        child: new Text(
                          "6",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: sub,
                        child: new Text(
                          "-",
                          style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.red[700],
                              fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.white,
                        highlightColor: Colors.red[100],
                        splashColor: Colors.red[100],
                        padding: const EdgeInsets.all(15.0),
                      )
                    ]),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 15.0, left: 5.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new RawMaterialButton(
                        onPressed: click7,
                        child: new Text(
                          "7",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: click8,
                        child: new Text(
                          "8",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: click9,
                        child: new Text(
                          "9",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: add,
                        child: new Text(
                          "+",
                          style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.red[700],
                              fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.white,
                        highlightColor: Colors.red[100],
                        splashColor: Colors.red[100],
                        padding: const EdgeInsets.all(15.0),
                      )
                    ]),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 15.0, left: 5.0, bottom: 6.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new RawMaterialButton(
                        onPressed: click0,
                        child: new Text(
                          "0",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        constraints: BoxConstraints.tightFor(width: 200.0),
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45.0)),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 15.0, bottom: 15.0, right: 15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: clickDot,
                        child: new Text(
                          ".",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black45,
                        padding: const EdgeInsets.all(15.0),
                      ),
                      new RawMaterialButton(
                        onPressed: equals,
                        child: new Text(
                          "=",
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.w500),
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.red[700],
                        padding: const EdgeInsets.all(15.0),
                      )
                    ]),
              ),
            ]),
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
        backgroundColor: Colors.blueGrey,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              hoverColor: Colors.blueGrey,
              title: Text(
                'Simple',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageSimple()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              hoverColor: Colors.blueGrey,
              title: Text(
                'Hard',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageHard()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
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
              backgroundColor: Colors.blueGrey,
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
              color: Colors.blueGrey,
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
              color: Colors.blueGrey,
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
              color: Colors.blueGrey,
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
