import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';

class OfferAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 85,
      child: Padding(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
                color: CustomColors.mainWhite,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Ofertas",
                  style: TextStyle(color: CustomColors.mainWhite, fontSize: 22),
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.shopping_basket),
                onPressed: () => print('Im here'),
                color: CustomColors.mainWhite,
              )
            ],
          ),
        ),
      ),
    );
  }
}
