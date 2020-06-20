import 'dart:developer';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  int get id;

  static Serializer<Article> get serializer => _$articleSerializer;
  Article._();
  factory Article([updates(ArticleBuilder b)]) = _$Article;
}


// class Article{
//   final String text;
//   final String url;
//   final String by;
//   final int time;
//   final int score;

//   const Article(
//     {this.text,
//     this.url,
//     this.by,
//     this.time,
//     this.score,
//     }
//   );

//   factory Article.fromJson(Map<String, dynamic> json ){
//     if(json==null) return null;

//     return Article(
//       text:json['text'] ?? 'null',
//       url:json['url'],
//       by:json['by'],
//       time:json['time'],
//       score:json['score'],
//     );
//   }

// }


  
