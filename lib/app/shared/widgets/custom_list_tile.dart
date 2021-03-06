import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:internationalization/internationalization.dart';
import 'package:nubuy/app/shared/colors.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final int price;
  final String image;
  final Function onPressed;
  final double borderRadius;
  final double paddingTop;

  const CustomListTile(
      {@required this.image,
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
          leading: ClipOval(
            child: Container(
              height: 50,
              width: 50,
              child: CachedNetworkImage(
                imageUrl: this.image,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
          subtitle: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: Strings.of(context).valueOf('mask'),
                  style: TextStyle(color: CustomColors.mainGrey)),
              TextSpan(
                  text: this.price.toString(),
                  style: TextStyle(color: CustomColors.mainGrey))
            ]),
          )),
    );
  }
}
