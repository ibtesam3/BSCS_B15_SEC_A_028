import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Size fontSize;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key key,
    this.fontSize,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = kPrimaryLightColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
