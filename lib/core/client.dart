import 'package:dio/dio.dart';

class ApiClient {
  Dio dio = Dio();

  Future<List<dynamic>> fetchMyProfile() async {
    print("chikichiki");
    var response = await dio.get('http://10.10.2.51:8888/api/v1/recipes/list');
    print(response.toString());
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      print(data.toString());
      return data;
    }else{
      throw Exception("Malumot yoq");
    }
  }
}
