import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Function onPressed;
  final double borderRadius;
  final double paddingTop;

  const CustomListTile(
      {this.image,
      @required this.price,
      @required this.title,
      this.borderRadius = 15,
      this.paddingTop = 30,
      @required this.onPressed})
      : assert(price != null),
        assert(title != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: this.paddingTop),
      decoration: BoxDecoration(
          color: CustomColors.mainWhite,
          borderRadius: BorderRadius.all(Radius.circular(this.borderRadius)),
          boxShadow: [
            BoxShadow(
                blurRadius: 3,
                spreadRadius: .3,
                color: CustomColors.mainGrey,
                offset: Offset(2.0, 2.0))
          ]),
      child: ListTile(
        onTap: this.onPressed,
        title: Text(
          this.title,
          style: TextStyle(color: CustomColors.mainGrey),
        ),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(this.image != null
              ? this.image
              : "https://Icon-library.net/images/profile-Icon-white/profile-Icon-white-1.jpg"),
        ),
        subtitle: Text(
          '${this.price.toString()}',
          style: TextStyle(color: CustomColors.mainGrey),
        ),
      ),
    );
  }
}
