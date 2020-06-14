import 'dart:convert';

import 'package:hn_app/src/article.dart';

List<int> parseTopStories(String jsonString){
  final parsed = jsonDecode(jsonString);
  final listOfIds = List<int>.from(parsed);
  return listOfIds;
}

Article parseArticle(String jsonString){
  final parsed = jsonDecode(jsonString);
  Article article = Article.fromJson(parsed);
  return article;
}