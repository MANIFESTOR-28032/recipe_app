class ProfileModel {
  final int id;
  final int categoryId;
  final String title;
  final String description;
  final String photo;
  final int timeRequired;

  ProfileModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.description,
    required this.photo,
    required this.timeRequired,
    required rating,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      id: json['id'],
      categoryId: json['categoryId'],
      title: json['title'],
      description: json["description"],
      photo: json["photo"],
      timeRequired: json['timeRequired'],
      rating: json["rating"],
    );
  }
}

//

// "id": 3,
//     "categoryId": 1,
//     "title": "Crispy Shrimp",
//     "description": "Fluffy pancakes served with silky whipped cream, a classic breakfast indulgence perfect for a leisurely morning treat.",
//     "photo": "http://localhost:8888/uploads/recipes/seafood/crispy_shrimp.png",
//     "timeRequired": 25,
//     "rating": 3.9
