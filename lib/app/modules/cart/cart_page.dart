import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/cart/widgets/cart_body.dart';
import 'package:nubuy/app/modules/cart/widgets/cart_bottom.dart';
import 'package:nubuy/app/shared/colors.dart';
import 'package:nubuy/app/shared/widgets/custom_app_bar.dart';

class CartPage extends StatefulWidget {
  final String title;
  const CartPage({Key key, this.title = "Cart"}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainSky,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              CustomAppBar(
                title: "Carrinho",
                iconButtonRedirect: Spacer(),
              ),
              CartBody()
            ],
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: CartBottom(),
          )
        ],
      ),
    );
  }
}
