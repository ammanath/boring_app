import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:hn_app/src/article.dart';
import 'package:hn_app/src/serializers.dart';

List<int> parseTopStories(String jsonString){
  final parsed = jsonDecode(jsonString);
  final listOfIds = List<int>.from(parsed);
  return listOfIds;
}

Article parseArticle(String jsonString){
  final parsed = jsonDecode(jsonString);
  Article article = standardSerializers.deserializeWith(Article.serializer, parsed);
  return article;
}

