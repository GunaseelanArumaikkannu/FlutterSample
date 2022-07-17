import 'package:flutter/material.dart';
import 'package:flutter_assignment/text.dart';
import 'package:flutter_assignment/text_control.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = "Hello Text";

  void setText(String text) {
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          MyText(
            text: text,
          ),
          TextControl(
            setText: setText,
          ),
        ],
      ),
    );
  }
}
