import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.onPressed,
    this.title,
  });

  final Function()? onPressed ;
  final bool? title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      child:title == false ? Text("Enviar") : CircularProgressIndicator(),
    );
  }
}
