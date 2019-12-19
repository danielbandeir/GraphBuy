import 'package:flutter/material.dart';
import 'package:nubuy/app/modules/help/widgets/help_body.dart';

class HelpPage extends StatefulWidget {
  final String title;
  const HelpPage({Key key, this.title = "Help"}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HelpBody());
  }
}
