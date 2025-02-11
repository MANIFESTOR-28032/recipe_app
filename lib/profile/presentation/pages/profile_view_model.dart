import 'package:flutter/material.dart';
import '../../data/models/recipe_model.dart';
import '../../data/repository/profile_repository.dart';

class CategoriesViewModel extends ChangeNotifier {
  CategoriesViewModel({required ProfileRepository repo}) : _repo = repo {
    load();
  }

  final ProfileRepository _repo;

   List<ProfileModel>? myProfile;

  Future load() async {
    print("nimadir");
   myProfile = await _repo.fetchMyProfile();
   print(myProfile.toString());
   notifyListeners();
  }
}