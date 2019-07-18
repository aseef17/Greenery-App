import 'package:flutter/material.dart';
import 'package:greenery/global_values.dart';
import 'package:greenery/pages/details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppValues.greenColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(screenWidth * 0.25)),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(screenWidth * 0.065),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: screenHeight * 0.015),
                    Icon(Icons.arrow_back),
                    SizedBox(height: screenHeight * 0.015),
                    Container(
                      width: screenWidth * 0.65,
                      child: Text("Fiddle Leaf Fig Topiary",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.08)),
                    ),
                    SizedBox(height: screenHeight * 0.010),
                    Text('10" Nursery Pot',
                        style: TextStyle(color: Colors.black45)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('\$',
                            style: TextStyle(
                                color: AppValues.greenColor,
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.06)),
                        SizedBox(width: screenWidth * 0.005),
                        Text('85',
                            style: TextStyle(
                                color: AppValues.greenColor,
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.12)),
                      ],
                    ),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FloatingActionButton(
                          heroTag: null,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen()));
                          },
                          backgroundColor: AppValues.greenColor,
                          child: Icon(Icons.shopping_cart),
                        ),
                        Container(
                            width: screenWidth * 0.45,
                            child: Image.network(AppValues.productImage,
                                fit: BoxFit.cover))
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.015),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                color: AppValues.greenColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: screenHeight * 0.02),
                      Text("Planting", style: TextStyle(color: Colors.white)),
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.025),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              bottomItem(screenWidth, screenHeight, '250', 'ml',
                                  'water'),
                              bottomItem(screenWidth, screenHeight, '18', 'C',
                                  'sunshine'),
                            ]),
                      )
                    ],
                  ),
                ),
              ),
          )
        ],
      ),
    );
  }

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
}
