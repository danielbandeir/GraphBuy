import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nu_buy/app/modules/home/widgets/balance_card.dart';
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
          BalanceCard(),
          Container(
            height: 120,
            margin: EdgeInsets.only(bottom: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CustomCard(
                  cardText: "Ofertas",
                  cardIcon: Icons.shopping_cart,
                ),
                CustomCard(
                  cardText: "Carrinho",
                  cardIcon: Icons.shopping_basket,
                ),
                CustomCard(
                  cardText: "Histórico",
                  cardIcon: Icons.receipt,
                ),
                CustomCard(
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
