
import '../../../core/client.dart';
import '../models/recipe_model.dart';

class ProfileRepository {
  ProfileRepository({
    required this.client,
  });

  final ApiClient client;
   List<ProfileModel>? myProfile;

  Future<List<ProfileModel>?> fetchMyProfile() async {
    print("qandaydir");
    var rawProfile = await client.fetchMyProfile();
    print("raprofile $rawProfile");
    myProfile = rawProfile.map((e)=>ProfileModel.fromJson(e)).toList();
    return myProfile;
  }
}
