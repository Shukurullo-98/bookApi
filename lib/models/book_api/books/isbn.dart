import 'package:json_annotation/json_annotation.dart';

part 'isbn.g.dart';

@JsonSerializable()
class Isbn {
  Isbn({
    required this.isbn10,
    required this.isbn13,
  });

  @JsonKey(defaultValue: '', name: 'isbn10')
  String isbn10;

  @JsonKey(defaultValue: '', name: 'isbn13')
  String isbn13;

  factory Isbn.fromJson(Map<String, dynamic> json) => _$IsbnFromJson(json);

  Map<String, dynamic> toJson() => _$IsbnToJson(this);


}
