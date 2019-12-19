import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internationalization/internationalization.dart';
import 'package:nubuy/app/shared/colors.dart';
import 'package:nubuy/app/shared/widgets/custom_alert_dialgog.dart';
import 'package:nubuy/app/shared/widgets/custom_app_bar.dart';
import 'package:nubuy/app/shared/widgets/custom_list_tile.dart';

class HistoricBody extends StatefulWidget {
  @override
  _HistoricBodyState createState() => _HistoricBodyState();
}

class _HistoricBodyState extends State<HistoricBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CustomAppBar(
          title: Strings.of(context).valueOf("historic"),
          iconButtonRedirect: Spacer(),
        ),
        Expanded(
            child: WatchBoxBuilder(
          box: Hive.box('historic'),
          builder: (context, box) {
            return Container(
              decoration: BoxDecoration(
                color: CustomColors.mainSky,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                child: ListView.builder(
                  itemCount: box.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomListTile(
                      onPressed: () => showDescription(
                          context,
                          box.getAt(index).product.name,
                          box.getAt(index).price,
                          box.getAt(index).product.description,
                          box.getAt(index).product.image,
                          Strings.of(context).valueOf("buy"),
                          () => print("test"),
                          enableButton: false),
                      title: box.getAt(index).product.name,
                      price: box.getAt(index).price,
                      image: box.getAt(index).product.image,
                    );
                  },
                ),
              ),
            );
          },
        )),
      ],
    );
  }
}
