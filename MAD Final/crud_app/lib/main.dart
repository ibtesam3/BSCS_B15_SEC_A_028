import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/second': (context) => Home(),
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
            'Crud App',
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
                backgroundImage: AssetImage('Images/crud.jpg'),
              ),
            ),
          ],
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
