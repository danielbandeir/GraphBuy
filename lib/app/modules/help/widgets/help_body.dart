import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/help/help_bloc.dart';
import 'package:nubuy/app/modules/help/help_module.dart';
import 'package:nubuy/app/shared/colors.dart';
import 'package:nubuy/app/shared/widgets/custom_app_bar.dart';
import 'package:nubuy/app/shared/widgets/custom_raised_button.dart';

class HelpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HelpBloc bloc = HelpModule.to.getBloc<HelpBloc>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CustomAppBar(
          title: "Ajuda",
          iconButtonRedirect: Spacer(),
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
            color: CustomColors.mainSky,
          ),
          child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 5),
              child: CustomRaisedButton(
                onPressedRaisedButton: () async {
                  await bloc.clearHistoricAndUserData();
                  Navigator.pushNamed(context, '/home/main');
                },
                raisedText: "Limpar dados",
                raisedButtonColor: CustomColors.mainSky,
                raisedTextColor: CustomColors.mainWhite,
              )),
        )),
      ],
    );
  }
}
