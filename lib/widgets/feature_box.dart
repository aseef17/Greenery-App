import 'package:flutter/material.dart';
import 'package:greenery/global_values.dart';

bottomItem(screenWidth, screenHeight, mainText, subText, bottomText) {
    return Container(
      width: screenWidth / 2 - 50,
      height: screenHeight * 0.13,
      decoration: BoxDecoration(
          color: AppValues.darkGreenColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(screenWidth * 0.05),
              topRight: Radius.circular(screenWidth * 0.05))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(mainText,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.13)),
              SizedBox(width: screenWidth * 0.005),
              Text(subText, style: TextStyle(color: Colors.white54))
            ],
          ),
          Text(bottomText, style: TextStyle(color: Colors.white54))
        ],
      ),
    );
  }