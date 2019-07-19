import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenery/global_values.dart';
import 'package:greenery/widgets/feature_item_row.dart';
import 'package:greenery/widgets/feature_help_item_row.dart';
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
                featureItemRow(Icons.straighten, 'Size', '38" - 48" tall'),
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
}
