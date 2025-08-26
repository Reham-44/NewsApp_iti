import 'package:dio/dio.dart';
import 'package:newapp/models/model.dart';

class NewsService {
  final Dio dio = Dio();
  final String apiKey = "3272369cf10d485f97402bed90d5f593";

  Future<List<model>> getNewsByCategory(String category) async {
    Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines",
      queryParameters: {
        "country": "us",
        "category": category,
        "apiKey": apiKey,
      },
    );

Map<String, dynamic> data = response.data;
    List<dynamic> articles = data['articles'];

    List<model> list = [];

    for (var article in articles) {
      model m = model(
        title: article['title'],
        desc: article['description'],
        img: article['urlToImage'],
      );
      list.add(m);
    }

    print(list);
    return list;

  }
}



