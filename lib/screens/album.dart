class Album {
  Album({
    required this.title,
    required this.imdb,
    required this.poster,
    required this.fanart,
    required this.status,
    required this.statusMessage,
  });

  String title;
  String imdb;
  String poster;
  String fanart;
  String status;
  String statusMessage;

  factory Album.fromJson(Map<String, dynamic> json) => Album(
        title: json["title"],
        imdb: json["IMDB"],
        poster: json["poster"],
        fanart: json["fanart"],
        status: json["status"],
        statusMessage: json["status_message"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "IMDB": imdb,
        "poster": poster,
        "fanart": fanart,
        "status": status,
        "status_message": statusMessage,
      };
}
