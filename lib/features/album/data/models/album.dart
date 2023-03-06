import 'package:flutter_clean_architecture/features/album/domain/entities/album.dart';

class AlbumModel extends Album {
  final int userId;
  final int id;
  final String title;

  AlbumModel({required this.userId, required this.id, required this.title})
      : super(userId: userId, id: id, title: title);

  factory AlbumModel.fromJson(Map<String, dynamic> json) {
    return AlbumModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
    };
  }

  @override
  String toString() {
    return 'AlbumModel{id: $id, userId: $userId, title: $title}';
  }

  @override
  List<Object> get props => [
        userId,
        id,
        title,
      ];
}
