import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubuy/app/app_bloc.dart';
import 'package:nubuy/app/app_module.dart';
import 'package:nubuy/app/shared/colors.dart';
import 'package:nubuy/app/shared/models/user.model.dart';

class BalacenTextWidget extends StatefulWidget {
  @override
  _BalacenTextWidgetState createState() => _BalacenTextWidgetState();
}

class _BalacenTextWidgetState extends State<BalacenTextWidget> {
  final AppBloc bloc = AppModule.to.bloc<AppBloc>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<UserModel>(
        future: bloc.getUser(),
        builder: (BuildContext context, snapshotUser) {
          if(snapshotUser.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(valueColor: const AlwaysStoppedAnimation<Color>(CustomColors.mainSky)));
          } else {
            return Padding(
              padding: EdgeInsets.only(left: 70, right: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(snapshotUser.data.name),
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
                          onPressed: () =>
                              bloc.isVisible.add(!bloc.isVisible.value),
                          color: CustomColors.mainGrey,
                          icon: const Icon(Icons.visibility_off),
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
                        return AnimatedOpacity(
                          duration: Duration(milliseconds: 100),
                          opacity: !snapshot.data ? 1 : 0,
                          child: Text(
                            snapshotUser.data.balance.toString(),
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
            );
          }
        },
      ),
    );
  }
}
