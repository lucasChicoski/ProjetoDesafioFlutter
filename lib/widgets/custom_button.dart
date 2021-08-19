import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.onPressed,
    this.title,
  });

  final Function()? onPressed ;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      child: Text(title!),
    );
  }
}
