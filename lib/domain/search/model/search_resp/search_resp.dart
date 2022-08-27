// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_app/core/constants.dart';

part 'search_resp.g.dart';

@JsonSerializable()
class SearchResp {

@JsonKey(name: 'results')
  List<SearchResultData> results;

  SearchResp({this.results = const[]});

  factory SearchResp.fromJson(Map<String, dynamic> json) {
    return _$SearchRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchRespToJson(this);
}

@JsonSerializable()
class SearchResultData {
  

  @JsonKey(name: 'original_title')
  String? original_name;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  String get posterImageUrl => '$imageAppendUrl$posterPath';


  SearchResultData({

    this.original_name,
    this.posterPath,
  });

  factory SearchResultData.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}
