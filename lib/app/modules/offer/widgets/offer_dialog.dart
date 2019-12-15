import 'package:flutter/material.dart';

class OfferDialog extends StatefulWidget {
  @override
  _OfferDialogState createState() => _OfferDialogState();
}

class _OfferDialogState extends State<OfferDialog> {
  @override
  Widget build(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) { return AlertDialog(
          title: new Text("Alert Dialog titulo"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            // define os botões na base do dialogo
            new FlatButton(
              child: new Text("Fechar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }
}