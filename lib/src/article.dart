import 'dart:developer';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  int get id;
  bool get deleted;//	true if the item is deleted.
  String get type;//	The type of item. One of "job", "story", "comment", "poll", or "pollopt".
  String get by;//	The username of the item's author.
  int get time;//	Creation date of the item, in Unix Time.
  String get text;//	The comment, story or poll text. HTML.
  bool get dead;//	true if the item is dead.
  String get parent;//	The comment's parent: either another comment or the relevant story.
  int get poll;//	The pollopt's associated poll.
  BuiltList<int> get kids;//	The ids of the item's comments, in ranked display order.
  String get url;//	The URL of the story.
  int get score;//	The story's score, or the votes for a pollopt.
  String get title;//	The title of the story, poll or job. HTML.
  BuiltList<int> get parts;//	A list of related pollopts, in display order.
  int get descendants;

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


  
