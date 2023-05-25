import 'package:json_annotation/json_annotation.dart';

part 'results.g.dart';

@JsonSerializable()
class Result {
  @JsonKey(defaultValue: '', name: 'list_name')
  String listName;

  @JsonKey(defaultValue: '', name: 'list_name_encoded')
  String listNameEncoded;

  @JsonKey(defaultValue: '', name: 'bestsellers_date')
  String bestsellersDate;

  @JsonKey(defaultValue: '', name: 'published_date')
  String publishedDate;

  @JsonKey(defaultValue: '', name: 'published_date_description')
  String publishedDateDescription;

  @JsonKey(defaultValue: '', name: 'next_published_date')
  String nextPublishedDate;

  @JsonKey(defaultValue: '', name: 'previous_published_date')
  String previousPublishedDate;

  @JsonKey(defaultValue: '', name: 'display_name')
  String displayName;

  @JsonKey(defaultValue: '', name: 'normal_list_ends_at')
  String normalListEndsAt;

  @JsonKey(defaultValue: '', name: 'updated')
  String updated;

  @JsonKey(defaultValue: '', name: 'books')
  String books;

  @JsonKey(defaultValue: '', name: 'corrections')
  String corrections;

  Result({
    required this.bestsellersDate,
    required this.books,
    required this.corrections,
    required this.displayName,
    required this.listName,
    required this.listNameEncoded,
    required this.nextPublishedDate,
    required this.normalListEndsAt,
    required this.previousPublishedDate,
    required this.publishedDate,
    required this.publishedDateDescription,
    required this.updated,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);


}
