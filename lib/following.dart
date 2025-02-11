import 'dart:math';

import 'package:flutter/material.dart';


import 'utils.dart';

class Following extends StatelessWidget {
  const Following({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356,
      height: 49,
      decoration: BoxDecoration(
        color: AppColors.bacround,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          width: 2,
          color: AppColors.Red,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Row(
          children: [
            SizedBox(width: 20),
            Column(
              children: [
                Text(
                  '60',
                  style: TextStyle(
                    color: AppColors.Oq,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'recipes',
                  style: TextStyle(
                    color: AppColors.Oq,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(width: 34),
            Transform.rotate(
              angle: pi / 2,
              child: Container(
                width: 20,
                height: 1,
                color: AppColors.Red,
              ),
            ),
            SizedBox(width: 34),
            Column(
              children: [
                Text(
                  '60',
                  style: TextStyle(
                    color: AppColors.Oq,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Following',
                  style: TextStyle(
                    color: AppColors.Oq,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(width: 34),
            Transform.rotate(
              angle: pi / 2,
              child: Container(
                width: 20,
                height: 1,
                color: AppColors.Red,
              ),
            ),
            SizedBox(width: 34),
            Column(
              children: [
                Text(
                  '60',
                  style: TextStyle(
                    color: AppColors.Oq,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1,),
                Text(
                  'Followers',
                  style: TextStyle(
                    color: AppColors.Oq,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
