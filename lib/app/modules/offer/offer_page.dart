import 'package:flutter/material.dart';

class OfferPage extends StatefulWidget {
  final String title;
  const OfferPage({Key key, this.title = "Offer"}) : super(key: key);

  @override
  _OfferPageState createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
