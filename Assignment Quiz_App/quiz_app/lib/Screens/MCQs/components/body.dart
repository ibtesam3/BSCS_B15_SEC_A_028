import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/Home/home_screen.dart';
import 'package:quiz_app/components/rounded_button.dart';
import 'package:quiz_app/components/rounded_input_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('assets/image/mcqs.png'),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: "Enter Your Name",
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Next",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
          ),
          RoundedButton(
            text: "Back",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
