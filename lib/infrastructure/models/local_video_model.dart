import 'package:toktik_app/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
  required this.name, 
  required this.videoUrl, 
  this.views = 0,
  this.likes = 0
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) => LocalVideoModel(
    name: json["name"] ?? 'No video caption', 
    videoUrl: json ["videoUrl"], 
    likes: json ["likes"] ?? 0, 
    views: json ["views"] ?? 0
  );

  VideoPost toVideoPostEntity() => VideoPost(
    caption: name, 
    videoUrl: videoUrl,
    likes: likes,
    views: views
  );

  
}