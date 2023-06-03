import 'package:book_api/models/book_api/results/results.dart';
import 'package:json_annotation/json_annotation.dart';

part 'top_objects.g.dart';

@JsonSerializable(explicitToJson: true)
class TopObjects {

  @JsonKey(defaultValue: '', name: 'status')
  String status;

  @JsonKey(defaultValue: '', name: 'copyright')
  String copyright;

  @JsonKey(defaultValue: 0, name: 'num_results')
  int numResults;

  @JsonKey(defaultValue: '', name: 'last_modified')
  String lastModified;

  @JsonKey(name: 'results')
  Result results;

  TopObjects({
    required this.status,
    required this.copyright,
    required this.numResults,
    required this.lastModified,
    required this.results,
});

  factory TopObjects.fromJson(Map<String, dynamic> json) => _$TopObjectsFromJson(json);

  Map<String, dynamic> toJson() => _$TopObjectsToJson(this);


}
