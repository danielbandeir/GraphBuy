import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/home/home_bloc.dart';
import 'package:nubuy/app/modules/home/home_module.dart';
import 'package:nubuy/app/shared/colors.dart';

class BalacenTextWidget extends StatefulWidget {
  @override
  _BalacenTextWidgetState createState() => _BalacenTextWidgetState();
}

class _BalacenTextWidgetState extends State<BalacenTextWidget> {
  final bloc = HomeModule.to.bloc<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 70, right: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      "Olá, Daniel",
                      style: TextStyle(
                        color: CustomColors.mainGrey,
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                      ),
                    ),
                  ),
                ),
            Row(
              children: <Widget>[
                Align(
                  child: Text(
                    "Saldo",
                    style: TextStyle(color: CustomColors.mainGrey),
                  ),
                ),
                Align(
                  child: IconButton(
                    onPressed: () => bloc.isVisible.add(!bloc.isVisible.value),
                    color: CustomColors.mainGrey,
                    icon: Icon(Icons.visibility_off),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: StreamBuilder(
                stream: bloc.isVisible.stream,
                initialData: false,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  return Opacity(
                    opacity: !snapshot.data ? 1 : 0,
                    child: Text(
                      "RS 3000,00",
                      style: TextStyle(
                        color: CustomColors.mainGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
