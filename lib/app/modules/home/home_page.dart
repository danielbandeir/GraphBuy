import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nubuy/app/modules/home/widgets/balance_card.dart';
import 'package:nubuy/app/modules/home/widgets/custom_card.dart';
import 'package:nubuy/app/shared/colors.dart';

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
          BalanceCard(),
          Container(
            height: 120,
            margin: EdgeInsets.only(bottom: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CustomCard(
                  onPressed: () => Navigator.pushNamed(context, '/offers/main'),
                  cardText: "Ofertas",
                  cardIcon: Icons.shopping_cart,
                ),
                CustomCard(
                  onPressed: null,
                  cardText: "Carrinho",
                  cardIcon: Icons.shopping_basket,
                ),
                CustomCard(
                  onPressed: null,
                  cardText: "Histórico",
                  cardIcon: Icons.receipt,
                ),
                CustomCard(
                  onPressed: null,
                  cardText: "Ajuda",
                  cardIcon: Icons.help,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
