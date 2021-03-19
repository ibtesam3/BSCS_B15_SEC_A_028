import 'package:flutter/material.dart';
import 'package:shop/values/values.dart';

class ListWidget extends StatelessWidget {
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
              height: 238,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          right: 0,
                          child: Image.asset(
                            "assets/images/header-2.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          right: 11,
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
                                      height: 21,
                                      margin:
                                          EdgeInsets.only(left: 15, top: 31),
                                      child: Image.asset(
                                        "assets/images/group-6.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 23,
                                      height: 22,
                                      margin:
                                          EdgeInsets.only(top: 31, right: 15),
                                      child: Image.asset(
                                        "assets/images/group-9.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: EdgeInsets.only(left: 25, top: 16),
                                  child: Text(
                                    "Shop",
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
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 56,
                                  height: 55,
                                  margin: EdgeInsets.only(top: 35, right: 15),
                                  decoration: BoxDecoration(
                                    color: AppColors.secondaryElement,
                                    boxShadow: [
                                      Shadows.primaryShadow,
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(27.5)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Container(
                                        height: 22,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 17),
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
                  Positioned(
                    left: 25,
                    top: 213,
                    child: Row(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          child: Opacity(
                            opacity: 0.3,
                            child: Image.asset(
                              "assets/images/do-2.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Apples",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontFamily: "Avenir",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            letterSpacing: 0.25,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 66,
              margin: EdgeInsets.only(top: 17),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 1,
                    right: 0,
                    child: Container(
                      height: 65,
                      decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 3,
                            height: 65,
                            decoration: BoxDecoration(
                              color: AppColors.accentElement,
                            ),
                            child: Container(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Opacity(
                          opacity: 0.05,
                          child: Container(
                            height: 1,
                            decoration: BoxDecoration(
                              color: AppColors.primaryElement,
                            ),
                            child: Container(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 107,
                            height: 25,
                            margin: EdgeInsets.only(left: 25, top: 20),
                            child: Row(
                              children: [
                                Container(
                                  width: 25,
                                  height: 25,
                                  child: Image.asset(
                                    "assets/images/done.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                                Spacer(),
                                Opacity(
                                  opacity: 0.3,
                                  child: Text(
                                    "Bananas",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      letterSpacing: 0.25,
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
                ],
              ),
            ),
            Opacity(
              opacity: 0.05,
              child: Container(
                height: 1,
                decoration: BoxDecoration(
                  color: AppColors.primaryElement,
                ),
                child: Container(),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 84,
                height: 25,
                margin: EdgeInsets.only(left: 25, top: 20),
                child: Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      child: Opacity(
                        opacity: 0.3,
                        child: Image.asset(
                          "assets/images/do-2.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Juice",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Avenir",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        letterSpacing: 0.25,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 66,
              margin: EdgeInsets.only(top: 20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 1,
                    right: 0,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          child: Opacity(
                            opacity: 0.03,
                            child: Image.asset(
                              "assets/images/bg-2.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          child: Container(
                            width: 3,
                            height: 65,
                            decoration: BoxDecoration(
                              color: AppColors.accentElement,
                            ),
                            child: Container(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Opacity(
                          opacity: 0.05,
                          child: Container(
                            height: 1,
                            decoration: BoxDecoration(
                              color: AppColors.primaryElement,
                            ),
                            child: Container(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 89,
                            height: 25,
                            margin: EdgeInsets.only(left: 25, top: 22),
                            child: Row(
                              children: [
                                Container(
                                  width: 25,
                                  height: 25,
                                  child: Image.asset(
                                    "assets/images/done.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                                Spacer(),
                                Opacity(
                                  opacity: 0.3,
                                  child: Text(
                                    "Bread",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      letterSpacing: 0.25,
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
                ],
              ),
            ),
            Opacity(
              opacity: 0.1,
              child: Container(
                height: 1,
                decoration: BoxDecoration(
                  color: AppColors.primaryElement,
                ),
                child: Container(),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 100,
                height: 25,
                margin: EdgeInsets.only(left: 25, top: 20),
                child: Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      child: Opacity(
                        opacity: 0.3,
                        child: Image.asset(
                          "assets/images/do-2.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Cheese",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Avenir",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        letterSpacing: 0.25,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Opacity(
              opacity: 0.05,
              child: Container(
                height: 1,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: AppColors.primaryElement,
                ),
                child: Container(),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 76,
                height: 25,
                margin: EdgeInsets.only(left: 25, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      child: Opacity(
                        opacity: 0.3,
                        child: Image.asset(
                          "assets/images/do-2.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Milk",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Avenir",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        letterSpacing: 0.25,
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
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: AppColors.primaryElement,
                ),
                child: Container(),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 93,
                height: 25,
                margin: EdgeInsets.only(left: 25, bottom: 39),
                child: Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      child: Opacity(
                        opacity: 0.3,
                        child: Image.asset(
                          "assets/images/do.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Yogurt",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Avenir",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        letterSpacing: 0.25,
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
    );
  }
}
