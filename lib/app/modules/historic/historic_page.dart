import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:nubuy/app/modules/historic/widgets/historic_body.dart';


class HistoricPage extends StatefulWidget {
  final String title;
  const HistoricPage({Key key, this.title = "Historic"}) : super(key: key);

  @override
  _HistoricPageState createState() => _HistoricPageState();
}

class _HistoricPageState extends State<HistoricPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Hive.openBox('historic'),
      builder: (BuildContext context, snapshot) {
        if(snapshot.connectionState == ConnectionState.done) {
          if(snapshot.hasData) {
            return Scaffold(
              body: HistoricBody(),
            );
          } else {
            return Scaffold();
          }
        } else {
          return Scaffold();
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    Hive.box('historic').close();
  }
}
