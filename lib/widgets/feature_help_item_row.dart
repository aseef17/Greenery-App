import 'package:flutter/material.dart';
import 'package:greenery/global_values.dart';

itemRow(title, screenWidth, screenHeight) {
    return Padding(
      padding: const EdgeInsets.only(left: 48.0),
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
            color: AppValues.darkGreenColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.0),
                bottomLeft: Radius.circular(32.0))),
        child: Row(
          children: <Widget>[
            SizedBox(width: screenWidth * 0.07),
            Icon(Icons.add, color: Colors.white, size: screenHeight * 0.035),
            SizedBox(width: screenWidth * 0.07),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }