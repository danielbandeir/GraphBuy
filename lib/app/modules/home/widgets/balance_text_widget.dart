import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internationalization/internationalization.dart';
import 'package:nubuy/app/app_bloc.dart';
import 'package:nubuy/app/app_module.dart';
import 'package:nubuy/app/modules/home/home_bloc.dart';
import 'package:nubuy/app/modules/home/home_module.dart';
import 'package:nubuy/app/shared/colors.dart';
import 'package:nubuy/app/shared/models/user.model.dart';

class BalacenTextWidget extends StatefulWidget {
  @override
  _BalacenTextWidgetState createState() => _BalacenTextWidgetState();
}

class _BalacenTextWidgetState extends State<BalacenTextWidget> {
  final HomeBloc bloc = HomeModule.to.bloc<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: WatchBoxBuilder(
        box: Hive.box('user'),
        builder: (BuildContext context, box) {
          UserModel data = box.get('data');
          if (data == null) {
            bloc.getUser();
            return Center(
              child: CircularProgressIndicator(
                  valueColor: const AlwaysStoppedAnimation<Color>(
                      CustomColors.mainSky)),
            );
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
                      child: Text(data.name),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Align(
                        child: Text(Strings.of(context).valueOf('balance'),
                            style: TextStyle(color: CustomColors.mainGrey)),
                      ),
                      Align(
                        child: IconButton(
                          onPressed: () async =>
                              await bloc.updateVisible(data.isVisible),
                          color: CustomColors.mainGrey,
                          icon: const Icon(Icons.visibility_off),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 100),
                      opacity: data.isVisible ? 1 : 0,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: Strings.of(context).valueOf('mask'),
                              style: TextStyle(color: CustomColors.mainGrey, fontSize: 24)),
                          TextSpan(
                            text: data.balance.toString(),
                            style: TextStyle(
                              color: CustomColors.mainGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          )
                        ]),
                      ),
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
