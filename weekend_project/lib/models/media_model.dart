class MediaModel {
  int? id;
  String? mediaType;
  bool? adult;
  List<int>? genreIds;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;
  String? backdropPath;
  String? posterPath;

  MediaModel(
      {this.id,
      this.mediaType,
      this.adult,
      this.genreIds,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount,
      this.backdropPath,
      this.posterPath});

  MediaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mediaType = json['mediaType'];
    adult = json['adult'];
    genreIds = json['genreIds'].cast<int>();
    originalLanguage = json['originalLanguage'];
    originalTitle = json['originalTitle'];
    overview = json['overview'];
    popularity = json['popularity'];
    releaseDate = json['releaseDate'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['voteAverage'];
    voteCount = json['voteCount'];
    backdropPath = json['backdropPath'];
    posterPath = json['posterPath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['mediaType'] = this.mediaType;
    data['adult'] = this.adult;
    data['genreIds'] = this.genreIds;
    data['originalLanguage'] = this.originalLanguage;
    data['originalTitle'] = this.originalTitle;
    data['overview'] = this.overview;
    data['popularity'] = this.popularity;
    data['releaseDate'] = this.releaseDate;
    data['title'] = this.title;
    data['video'] = this.video;
    data['voteAverage'] = this.voteAverage;
    data['voteCount'] = this.voteCount;
    data['backdropPath'] = this.backdropPath;
    data['posterPath'] = this.posterPath;
    return data;
  }
}
