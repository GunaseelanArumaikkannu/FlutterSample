import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  const MyText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue[100],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
