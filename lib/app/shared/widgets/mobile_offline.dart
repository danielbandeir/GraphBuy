import 'package:flutter/material.dart';
import 'package:nubuy/app/shared/colors.dart';

class MobileOffline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: CustomColors.mainWhite,
      child: Container(
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.warning, color: CustomColors.mainError),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text("Ocorreu um problema de conexão", style: TextStyle(color: CustomColors.mainError)),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text("Verifique sua conexão", style: TextStyle(color: CustomColors.mainError)),
            )
          ],
        ),
      ),
    );
  }
}
