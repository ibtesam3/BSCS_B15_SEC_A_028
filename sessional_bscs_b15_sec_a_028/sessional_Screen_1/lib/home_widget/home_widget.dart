import 'package:flutter/material.dart';
import 'package:sessionaltask/values/values.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 350,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/header.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 64,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 21,
                                height: 18,
                                margin: EdgeInsets.only(left: 15, top: 33),
                                child: Image.asset(
                                  "assets/images/group-4.png",
                                  fit: BoxFit.none,
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 23,
                                height: 22,
                                margin: EdgeInsets.only(top: 31, right: 15),
                                child: Image.asset(
                                  "assets/images/group-9.png",
                                  fit: BoxFit.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: EdgeInsets.only(top: 16),
                            child: Text(
                              "Good Morning!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.secondaryText,
                                fontFamily: "Avenir",
                                fontWeight: FontWeight.w300,
                                fontSize: 35,
                                letterSpacing: 0.5,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.only(top: 32),
                            child: Image.asset(
                              "assets/images/avatar-5.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        Container(
                          height: 25,
                          margin: EdgeInsets.only(left: 17, top: 45, right: 17),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                left: 8,
                                right: 8,
                              ),
                              Positioned(
                                child: Text(
                                  "FEBRUARY",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.secondaryText,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    letterSpacing: 1,
                                    height: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 319,
                height: 66,
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 11,
                      child: Opacity(
                        opacity: 0.5,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Positioned(
                              left: 3,
                              top: 0,
                              right: 4,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "SUN",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        letterSpacing: 1,
                                        height: 1,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Text(
                                        "MON",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontFamily: "Avenir",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                          letterSpacing: 1,
                                          height: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 21),
                                      child: Text(
                                        "TUE",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontFamily: "Avenir",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                          letterSpacing: 1,
                                          height: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      margin: EdgeInsets.only(right: 26),
                                      child: Text(
                                        "THU",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontFamily: "Avenir",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                          letterSpacing: 1,
                                          height: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      margin: EdgeInsets.only(right: 27),
                                      child: Text(
                                        "FRI",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontFamily: "Avenir",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                          letterSpacing: 1,
                                          height: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "SAT",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        letterSpacing: 1,
                                        height: 1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Text(
                                "WED",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  letterSpacing: 1,
                                  height: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(left: 4, top: 14, right: 4),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            left: 54,
                            right: 51,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "8",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      height: 1,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "10",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      height: 1,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 34),
                                    child: Text(
                                      "11",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        height: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "12",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      height: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 6,
                            right: 3,
                            bottom: 0,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "7",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      height: 1,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    margin: EdgeInsets.only(left: 24),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Positioned(
                                          left: 0,
                                          child: Opacity(
                                            opacity: 0.05,
                                            child: Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: AppColors.primaryElement,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                              ),
                                              child: Container(),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 18,
                                          bottom: 5,
                                          child: Container(
                                            width: 4,
                                            height: 4,
                                            decoration: BoxDecoration(
                                              color: AppColors.secondaryElement,
                                              borderRadius: Radii.k2pxRadius,
                                            ),
                                            child: Container(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 25),
                                    child: Text(
                                      "9",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        height: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    width: 4,
                                    height: 4,
                                    margin:
                                        EdgeInsets.only(right: 46, bottom: 5),
                                    decoration: BoxDecoration(
                                      color: AppColors.secondaryElement,
                                      borderRadius: Radii.k2pxRadius,
                                    ),
                                    child: Container(),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    width: 4,
                                    height: 4,
                                    margin:
                                        EdgeInsets.only(right: 37, bottom: 5),
                                    decoration: BoxDecoration(
                                      color: AppColors.secondaryElement,
                                      borderRadius: Radii.k2pxRadius,
                                    ),
                                    child: Container(),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "13",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      height: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 71,
              margin: EdgeInsets.only(top: 20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 1,
                    child: Row(
                      children: [
                        Container(
                          width: 3,
                          height: 70,
                          decoration: BoxDecoration(
                            color: AppColors.accentElement,
                          ),
                          child: Container(),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.only(left: 17),
                          child: Image.asset(
                            "assets/images/avatar-2.png",
                            fit: BoxFit.none,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 40,
                              margin: EdgeInsets.only(left: 20, top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      "New subpage for Janet",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        height: 1,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 2),
                                      child: Opacity(
                                        opacity: 0.5,
                                        child: Text(
                                          "8 – 10am",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontFamily: "Avenir",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            height: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 1,
                    top: 0,
                    right: 0,
                    child: Opacity(
                      opacity: 0.05,
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: AppColors.primaryElement,
                        ),
                        child: Container(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 71,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Row(
                      children: [
                        Container(
                          width: 3,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(26, 29, 29, 38),
                          ),
                          child: Container(),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.only(left: 17),
                          child: Image.asset(
                            "assets/images/avatar.png",
                            fit: BoxFit.none,
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 126,
                            height: 40,
                            margin: EdgeInsets.only(top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "Catch up with Tom",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      height: 1,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 124,
                                    height: 17,
                                    margin: EdgeInsets.only(top: 2, right: 2),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: EdgeInsets.only(right: 15),
                                            child: Opacity(
                                              opacity: 0.5,
                                              child: Text(
                                                "11 – 12pm",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: AppColors.primaryText,
                                                  fontFamily: "Avenir",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  height: 1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Opacity(
                                            opacity: 0.5,
                                            child: Text(
                                              "Hangouts",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontFamily: "Avenir",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                height: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 70,
                    child: Opacity(
                      opacity: 0.05,
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: AppColors.primaryElement,
                        ),
                        child: Container(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 71,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Row(
                      children: [
                        Container(
                          width: 3,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(26, 29, 29, 38),
                          ),
                          child: Container(),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.only(left: 17),
                          child: Image.asset(
                            "assets/images/avatar-3.png",
                            fit: BoxFit.none,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 40,
                              margin: EdgeInsets.only(left: 20, top: 14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      "Lunch with Diane",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        height: 1,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 17,
                                    margin: EdgeInsets.only(top: 2, right: 20),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Opacity(
                                            opacity: 0.5,
                                            child: Text(
                                              "1pm",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontFamily: "Avenir",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                height: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Opacity(
                                            opacity: 0.5,
                                            child: Text(
                                              "Restaurant",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontFamily: "Avenir",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                height: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 70,
                    child: Opacity(
                      opacity: 0.05,
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: AppColors.primaryElement,
                        ),
                        child: Container(),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 15,
                    bottom: 15,
                    child: Container(
                      width: 56,
                      height: 55,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryElement,
                        boxShadow: [
                          Shadows.primaryShadow,
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(27.5)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 22,
                            margin: EdgeInsets.symmetric(horizontal: 17),
                            child: Image.asset(
                              "assets/images/group-5.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
