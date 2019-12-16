import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/cart/cart_bloc.dart';
import 'package:nubuy/app/modules/cart/cart_module.dart';
import 'package:nubuy/app/shared/colors.dart';

class CartBottom extends StatefulWidget {
  @override
  _CartBottomState createState() => _CartBottomState();
}

class _CartBottomState extends State<CartBottom> {
  final cartBloc = CartModule.to.bloc<CartBloc>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: cartBloc.cardToggle.stream,
      initialData: false,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          width: double.infinity,
          height: snapshot.data ? 250 : 80,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40), topLeft: Radius.circular(40))),
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Valor: 3000,00"),
                    Spacer(),
                    IconButton(
                        icon: Icon(snapshot.data ? Icons.arrow_downward : Icons.arrow_upward),
                        onPressed: () => cartBloc.cardToggle.add(snapshot.data ? false : true))
                  ],
                ),
                snapshot.data ? AnimatedContainer(
                  duration: Duration(seconds: 2),
                  child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: RaisedButton(
                    onPressed: null,
                    
                    child: Text("Pagar"),
                    color: CustomColors.mainGreen,
                  ),
                ),
                ) : Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
