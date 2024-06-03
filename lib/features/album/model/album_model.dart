class AlbumModel {
  final int? userId;
  final int? id;
  final String? title;

  AlbumModel({
    this.userId,
    this.id,
    this.title,
  });

  factory AlbumModel.fromJson(Map<String, dynamic> json) => AlbumModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
      };
}
