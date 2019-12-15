import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';

class OfferListTile extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Function onPressed;
  final double borderRadius;

  const OfferListTile(
      {this.image,
      @required this.price,
      @required this.title,
      this.borderRadius = 15,
      @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: CustomColors.mainWhite,
        borderRadius: BorderRadius.all(Radius.circular(this.borderRadius)),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            spreadRadius: .3,
            color: CustomColors.mainGrey,
            offset: Offset(
              2.0,
              2.0
            )
          )
        ]
      ),
      child: ListTile(
        onTap: this.onPressed,
        title: Text(
          this.title,
          style: TextStyle(color: CustomColors.mainGrey),
        ),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(this.image != null
              ? this.image
              : "https://icon-library.net/images/profile-icon-white/profile-icon-white-1.jpg"),
        ),
        subtitle: Text(
          '${this.price.toString()}',
          style: TextStyle(color: CustomColors.mainGrey),
        ),
      ),
    );
  }
}
