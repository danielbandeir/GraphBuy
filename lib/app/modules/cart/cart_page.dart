import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/cart/widgets/cart_app_bar.dart';
import 'package:nubuy/app/shared/colors.dart';

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
      body: Column(
        children: <Widget>[
          CartAppBar()
        ],
      ),
    );
  }
}
