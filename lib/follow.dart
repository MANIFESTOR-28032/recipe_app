import 'package:flutter/material.dart';
import 'utils.dart';

class Follow extends StatelessWidget {
  const Follow({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 27,
      decoration: BoxDecoration(
        color: AppColors.Red,
        borderRadius: BorderRadius.circular(120),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.Pushti2,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
