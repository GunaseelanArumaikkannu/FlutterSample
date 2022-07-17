import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function(String) setText;
  final TextEditingController _controller = TextEditingController();
  TextControl({Key? key, required this.setText}) : super(key: key);

  void onSubmit() {
    setText(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.yellow[100],
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide())),
              ),
              ElevatedButton(onPressed: onSubmit, child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
