import 'package:flutter/material.dart';

class CustomContentDialog extends StatefulWidget {
  final double heightContent;

  const CustomContentDialog({this.heightContent = 400});

  @override
  _CustomContentDialogState createState() => _CustomContentDialogState();
}

class _CustomContentDialogState extends State<CustomContentDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.heightContent, 
    );
  }
}