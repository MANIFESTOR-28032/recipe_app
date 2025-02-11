import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'profile/presentation/pages/profile_view_model.dart';
import 'utils.dart';

class ProfileTaom extends StatelessWidget {
  const ProfileTaom({
    super.key,
    required this.vm,
  });

  final CategoriesViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 150,
          height: 76,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(14),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: Text(
                        'Crispy Shrimp',
                        style: TextStyle(
                          color: AppColors.Qora,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'A feast for the senses',
                      style: TextStyle(
                        color: AppColors.Qora,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              '4',
                              style: TextStyle(
                                  color: AppColors.Pushti2, fontSize: 13),
                            ),
                            SizedBox(width: 5),
                            SvgPicture.asset("asset/yulduz.svg")
                          ],
                        ),
                        SizedBox(
                          width: 58,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('asset/soat.svg'),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '20min',
                              style: TextStyle(
                                  color: AppColors.Pushti2, fontSize: 13),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 63,
          left: -5,
          right: -5.5,
          child: SizedBox(
            width: 180,
            height: 153,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.network(vm.myProfile![0].photo),
            ),
          ),
        ),
      ],
    );
  }
}
