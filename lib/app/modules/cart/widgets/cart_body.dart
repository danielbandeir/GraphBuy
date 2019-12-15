import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/widgets/custom_list_tile.dart';

class CartBody extends StatefulWidget {
  @override
  _CartBodyState createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: ListView(
                children: <Widget>[
                  CustomListTile(
                    onPressed: null,
                    title: "Testando",
                    paddingTop: 0,
                    price: 500.0,
                  ),
                  CustomListTile(
                    onPressed: null,
                    title: "Testando",
                    price: 500.0,
                  ),
                  CustomListTile(
                    onPressed: null,
                    title: "Testando",
                    price: 500.0,
                  ),
                  CustomListTile(
                    onPressed: null,
                    title: "Testando",
                    price: 500.0,
                  ),
                ],
              ),
            ),
        );
  }
}
