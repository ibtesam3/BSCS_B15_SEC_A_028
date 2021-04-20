import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/TrueFalse/true_false.dart';
import 'package:quiz_app/Screens/MCQs/mcqs.dart';
import 'package:quiz_app/components/rounded_button.dart';
import 'package:quiz_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
            child: Text('Quiz App'),
          ),
        ),
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('image/i.jpg'),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Text(
                'Ibtesam Ahmad',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'FA17-BCS-028',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
              RoundedButton(
                text: "True/False",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return TrueFalseScreen();
                      },
                    ),
                  );
                },
              ),
              RoundedButton(
                text: "MCQs",
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MCQsScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
