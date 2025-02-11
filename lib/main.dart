import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uyishilar216/profile_taom.dart';
import 'core/client.dart';
import 'follow.dart';
import 'following.dart';
import 'profile/data/repository/profile_repository.dart';
import 'profile/presentation/pages/profile_view_model.dart';
import 'utils.dart';

void main() {
  runApp(ProfileWiew());
}

class ProfileWiew extends StatelessWidget {
  const ProfileWiew({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(
          vm: CategoriesViewModel(
              repo: ProfileRepository(client: ApiClient()))),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.vm});

  final CategoriesViewModel vm;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: vm,
      builder: (context, child) => Scaffold(
        backgroundColor: AppColors.bacround,
        appBar: AppBar(
          backgroundColor: AppColors.bacround,
          elevation: 0,
          toolbarHeight: 200,
          title: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "asset/profil.png",
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(width: 13),
                  Column(
                    children: [
                      Text(
                        'Dianne Russell',
                        style: TextStyle(
                            color: AppColors.Pushti,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "@dianne_r",
                        style: TextStyle(
                            color: AppColors.Pushti,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "@My passion is cooking and sharing\nnew recipes with the world.",
                        style: TextStyle(
                            color: AppColors.Oq,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 65, right: 9),
                    child: Row(
                      children: [
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: AppColors.Red,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'asset/plus.svg',
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: AppColors.Red,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "asset/group.svg",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Follow(text: "Edit Profile"),
                  SizedBox(width: 6),
                  Follow(text: "Edit Profile"),
                ],
              ),
              SizedBox(height: 20),
              Following(),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              SizedBox(height: 17),
              Row(
                children: [
                  Container(
                    width: 162,
                    height: 18,
                    decoration: BoxDecoration(),
                    child: Center(
                      child: Text(
                        'Recipe',
                        style: TextStyle(
                          color: AppColors.Oq,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    width: 162,
                    height: 18,
                    decoration: BoxDecoration(),
                    child: Center(
                      child: Text(
                        'Recipe',
                        style: TextStyle(
                          color: AppColors.Oq,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Container(
                  width: 163,
                  height: 1,
                  decoration: BoxDecoration(
                      color: AppColors.Pushti,
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ProfileTaom(vm: vm),
                        SizedBox(width: 40,),
                        ProfileTaom(vm: vm),
                      ],
                    ),
                    SizedBox(height: 165,),
                    Row(
                      children: [
                        ProfileTaom(vm: vm),
                        SizedBox(width: 40,),
                        ProfileTaom(vm: vm),
                      ],
                    ),
                    SizedBox(height: 165,),
                    Row(
                      children: [
                        ProfileTaom(vm: vm),
                        SizedBox(width: 40,),
                        ProfileTaom(vm: vm),
                      ],
                    ),
                    SizedBox(height: 165,),
                    Row(
                      children: [
                        ProfileTaom(vm: vm),
                        SizedBox(width: 40,),
                        ProfileTaom(vm: vm),
                      ],
                    ),
                    SizedBox(height: 165,),
                    Row(
                      children: [
                        ProfileTaom(vm: vm),
                        SizedBox(width: 40,),
                        ProfileTaom(vm: vm),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          width: 430,
          height: 100,
          decoration: BoxDecoration(),
          child: Center(
            child: Container(
              width: 250,
              height: 56,
              decoration: BoxDecoration(
                color: AppColors.Pushti,
                borderRadius: BorderRadius.circular(150),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: Row(
                    children: [
                      SvgPicture.asset('asset/bottom1.svg'),
                      SizedBox(
                        width: 30,
                      ),
                      SvgPicture.asset('asset/bottom2.svg'),
                      SizedBox(
                        width: 30,
                      ),
                      SvgPicture.asset('asset/bottom3.svg'),
                      SizedBox(
                        width: 30,
                      ),
                      SvgPicture.asset('asset/bottom4.svg'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
