import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String btnText;

  const AppButton({Key? key, required this.btnText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      alignment: Alignment.center,
      child: Text(
        btnText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
