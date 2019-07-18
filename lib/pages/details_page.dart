import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenery/global_values.dart';
import 'dart:math' as math;

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppValues.greenColor,
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.025),
            padding: EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset(
                      'assets/images/clover.png',
                      height: screenHeight * 0.045,
                    ),
                  ),
                  Text('greenery nyc',
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.1,
                          fontSize: screenWidth * 0.05)),
                ]),
                SizedBox(height: screenHeight * 0.05),
                Container(
                  width: screenWidth * 0.65,
                  child: Text(
                    'Product Overview',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.15),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                featureItemRow(Icons.star, 'water', 'every 7 days'),
                SizedBox(height: screenHeight * 0.025),
                featureItemRow(Icons.ac_unit, 'Humidity', 'up to 82%'),
                SizedBox(height: screenHeight * 0.025),
                featureItemRow(Icons.straighten, 'Size', '38" - 48"tdll'),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.025),
          itemRow('Delivery Information', screenWidth, screenHeight),
          SizedBox(height: screenHeight * 0.025),
          itemRow('Return Policy', screenWidth, screenHeight),
          Spacer(),
          Container(
            height: screenHeight * 0.1,
            child: Row(
              children: <Widget>[
                Container(
                  width: screenWidth / 2,
                  child: Transform.rotate(
                    angle: math.pi / 2,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white54,
                      size: screenWidth * 0.08,
                    ),
                  ),
                ),
                Container(
                    height: 80.0,
                    width: screenWidth / 2,
                    decoration: BoxDecoration(
                        color: Color(0xff2c2731),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(48.0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text(
                          'add to cart',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  featureItemRow(icon, name, title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(width: 6.0),
            Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        ),
        Text(title, style: TextStyle(color: Colors.white54, fontSize: 20.0))
      ],
    );
  }

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
}
