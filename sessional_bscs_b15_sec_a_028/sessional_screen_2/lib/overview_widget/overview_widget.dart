import 'package:flutter/material.dart';
import 'package:overview/values/values.dart';

class OverviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: -0,
              bottom: 35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 478,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          right: 0,
                          child: Image.asset(
                            "assets/images/header-3.png",
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
                                      margin:
                                          EdgeInsets.only(left: 15, top: 33),
                                      child: Image.asset(
                                        "assets/images/group-4.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      margin:
                                          EdgeInsets.only(top: 27, right: 15),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Positioned(
                                            top: 0,
                                            right: 0,
                                            child: Image.asset(
                                              "assets/images/avatar-4.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          Positioned(
                                            right: 1,
                                            child: Container(
                                              width: 5,
                                              height: 5,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 255, 0, 94),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(2.5)),
                                              ),
                                              child: Container(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 62,
                                margin: EdgeInsets.only(
                                    left: 15, top: 16, right: 15),
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Positioned(
                                      top: 0,
                                      child: Text(
                                        "February",
                                        textAlign: TextAlign.center,
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
                                    Positioned(
                                      left: 10,
                                      top: 15,
                                      right: 0,
                                      bottom: -5,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Opacity(
                                              opacity: 0.5,
                                              child: Text(
                                                "2015",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color:
                                                      AppColors.secondaryText,
                                                  fontFamily: "Avenir",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  letterSpacing: 1,
                                                  height: 1,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 71,
                                margin: EdgeInsets.only(
                                    left: 25, top: 95, right: 25),
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 70,
                                        height: 71,
                                        child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            Positioned(
                                              left: -2,
                                              right: -2,
                                              child: Opacity(
                                                opacity: 0.1,
                                                child: Image.asset(
                                                  "assets/images/empty-2.png",
                                                  fit: BoxFit.none,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: -1,
                                              right: -2,
                                              child: Image.asset(
                                                "assets/images/filled.png",
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                            Positioned(
                                              left: 20,
                                              top: 21,
                                              right: 13,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      "28",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: AppColors
                                                            .secondaryText,
                                                        fontFamily: "Avenir",
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 23,
                                                        letterSpacing: 0.5,
                                                        height: 1,
                                                      ),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                          top: 4),
                                                      child: Text(
                                                        "%",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .secondaryText,
                                                          fontFamily: "Avenir",
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontSize: 11,
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
                                    Spacer(),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 70,
                                        height: 71,
                                        child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            Positioned(
                                              left: -2,
                                              top: -2,
                                              right: -2,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    right: 0,
                                                    child: Opacity(
                                                      opacity: 0.1,
                                                      child: Image.asset(
                                                        "assets/images/empty.png",
                                                        fit: BoxFit.none,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 0,
                                                    right: 4,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Container(
                                                            width: 34,
                                                            height: 22,
                                                            child: Image.asset(
                                                              "assets/images/filled-2.png",
                                                              fit: BoxFit.none,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 5,
                                                                    right: 10),
                                                            child: Text(
                                                              "%",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color: AppColors
                                                                    .secondaryText,
                                                                fontFamily:
                                                                    "Avenir",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                fontSize: 11,
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
                                            Positioned(
                                              left: 20,
                                              child: Text(
                                                "18",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color:
                                                      AppColors.secondaryText,
                                                  fontFamily: "Avenir",
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 23,
                                                  letterSpacing: 0.5,
                                                  height: 1,
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
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 228,
                                  margin: EdgeInsets.only(top: 47),
                                  child: Text(
                                    "Good job, you’ve completed 6% more tasks this month.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.secondaryText,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      letterSpacing: 0.25,
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
                  Spacer(),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 329,
                      height: 14,
                      margin: EdgeInsets.only(bottom: 23),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 81, 211, 194),
                              ),
                              child: Container(),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(
                              "Completed",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontFamily: "Avenir",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                letterSpacing: 0.25,
                                height: 1,
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "108",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              letterSpacing: 0.5,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.05,
                    child: Container(
                      height: 1,
                      margin: EdgeInsets.only(bottom: 22),
                      decoration: BoxDecoration(
                        color: AppColors.primaryElement,
                      ),
                      child: Container(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 329,
                      height: 15,
                      margin: EdgeInsets.only(bottom: 24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 252, 171, 83),
                              ),
                              child: Container(),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            child: Text(
                              "Snoozed",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontFamily: "Avenir",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                letterSpacing: 0.25,
                                height: 1,
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "56",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              letterSpacing: 0.5,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.05,
                    child: Container(
                      height: 1,
                      margin: EdgeInsets.only(bottom: 22),
                      decoration: BoxDecoration(
                        color: AppColors.primaryElement,
                      ),
                      child: Container(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 329,
                      height: 14,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 186, 119, 255),
                              ),
                              child: Container(),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 17),
                            child: Text(
                              "Overdue",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontFamily: "Avenir",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                letterSpacing: 0.25,
                                height: 1,
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "36",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              letterSpacing: 0.5,
                              height: 1,
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
              top: 182,
              child: Container(
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                  border: Border.fromBorderSide(Borders.primaryBorder),
                  borderRadius: BorderRadius.all(Radius.circular(62.5)),
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      top: -2,
                      right: -1,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            right: 0,
                            child: Image.asset(
                              "assets/images/filled-3.png",
                              fit: BoxFit.none,
                            ),
                          ),
                          Positioned(
                            top: 50,
                            right: 27,
                            child: Text(
                              "%",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.secondaryText,
                                fontFamily: "Avenir",
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                letterSpacing: 0.35625,
                                height: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 40,
                      child: Text(
                        "54",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontFamily: "Avenir",
                          fontWeight: FontWeight.w300,
                          fontSize: 40,
                          letterSpacing: 0.5,
                          height: 1,
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
    );
  }
}
