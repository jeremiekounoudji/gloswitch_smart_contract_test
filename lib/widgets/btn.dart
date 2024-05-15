// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../utilities/globalVariable.dart';

class Btn extends StatelessWidget {
  Btn({super.key, required this.text, this.color});
  final String text;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 400),
      decoration:
          BoxDecoration(color: color ?? firstColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CustomText(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            text: text,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}

class LoadingBtn extends StatelessWidget {
  const LoadingBtn({
    super.key,
  });
  // final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 400),
      decoration: BoxDecoration(color: firstColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
