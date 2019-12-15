import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';

class OfferListTile extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Function onPressed;

  const OfferListTile({this.image, @required this.price, @required this.title, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: this.onPressed,
      title: Text(this.title, style: TextStyle(color: CustomColors.mainGrey),),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(this.image != null ? this.image : "https://icon-library.net/images/profile-icon-white/profile-icon-white-1.jpg"),
      ),
      subtitle: Text('${this.price.toString()}', style: TextStyle(color: CustomColors.mainGrey),),
    );
  }
}