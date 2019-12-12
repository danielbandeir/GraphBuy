import 'package:flutter/material.dart';
import 'package:nu_buy/app/modules/home/widgets/custom_card.dart';
import 'package:nu_buy/app/shared/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainBackground,
      body: Column(
        children: <Widget>[
          CustomCard(
            cardText: Text(
              "Test",
              style: TextStyle(color: CustomColors.mainWhite),
            ),
            cardIcon: Icon(Icons.shopping_cart, size: 25, color: CustomColors.mainWhite),
          )
        ],
      ),
    );
  }
}
