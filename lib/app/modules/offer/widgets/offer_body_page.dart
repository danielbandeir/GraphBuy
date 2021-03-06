import 'package:flutter/material.dart';
import 'package:internationalization/internationalization.dart';
import 'package:nubuy/app/modules/offer/offer_bloc.dart';
import 'package:nubuy/app/modules/offer/offer_module.dart';
import 'package:nubuy/app/shared/colors.dart';
import 'package:nubuy/app/shared/models/offers.model.dart';
import 'package:nubuy/app/shared/widgets/custom_alert_dialgog.dart';
import 'package:nubuy/app/shared/widgets/custom_app_bar.dart';
import 'package:nubuy/app/shared/widgets/custom_list_tile.dart';
import 'package:nubuy/app/shared/widgets/custom_wait_purchase.dart';

class OfferBodyPage extends StatefulWidget {
  @override
  _OfferBodyPageState createState() => _OfferBodyPageState();
}

class _OfferBodyPageState extends State<OfferBodyPage> {
  final OfferBloc offerBloc = OfferModule.to.getBloc<OfferBloc>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CustomAppBar(
          title: Strings.of(context).valueOf("offer"),
          iconButtonRedirect: IconButton(
            icon: Icon(Icons.receipt, color: CustomColors.mainWhite),
            onPressed: () => Navigator.pushNamed(context, '/historic/main'),
          ),
        ),
        Expanded(
          child: FutureBuilder<List<OfferModel>>(
            future: offerBloc.getOffers(),
            builder: (BuildContext context, snapshot) {
              return !snapshot.hasData
                  ? Center(
                      child: CircularProgressIndicator(
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              CustomColors.mainWhite)))
                  : Container(
                      decoration: BoxDecoration(
                          color: CustomColors.thirdaryGrey,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                        child: ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CustomListTile(
                              onPressed: () => showDescription(
                                  context,
                                  snapshot.data[index].product.name,
                                  snapshot.data[index].price,
                                  snapshot.data[index].product.description,
                                  snapshot.data[index].product.image,
                                  Strings.of(context).valueOf("buy"),
                                  () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CustomWaitPurchase(
                                    futureAwait: offerBloc.purchaseItem(snapshot.data[index].id, snapshot.data[index]),
                                    routeNameRedirect: "/home/main",
                                  )))),
                              title: snapshot.data[index].product.name,
                              price: snapshot.data[index].price,
                              image: snapshot.data[index].product.image,
                            );
                          },
                        ),
                      ),
                    );
            },
          ),
        ),
      ],
    );
  }
}
