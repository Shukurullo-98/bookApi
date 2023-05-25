import 'package:json_annotation/json_annotation.dart';

part 'buy_links.g.dart';

@JsonSerializable()
class BuyLinks {
  @JsonKey(defaultValue: '', name: 'name')
  String name;

  @JsonKey(defaultValue: '', name: 'url')
  String url;

  BuyLinks({
    required this.name,
    required this.url,
});

  factory BuyLinks.fromJson(Map<String, dynamic> json) => _$BuyLinksFromJson(json);

  Map<String, dynamic> toJson() => _$BuyLinksToJson(this);

}
