// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopObjects _$TopObjectsFromJson(Map<String, dynamic> json) => TopObjects(
      status: json['status'] as String? ?? '',
      copyright: json['copyright'] as String? ?? '',
      numResults: json['num_results'] as int? ?? 0,
      lastModified: json['last_modified'] as String? ?? '',
      results: Result.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TopObjectsToJson(TopObjects instance) =>
    <String, dynamic>{
      'status': instance.status,
      'copyright': instance.copyright,
      'num_results': instance.numResults,
      'last_modified': instance.lastModified,
      'results': instance.results.toJson(),
    };
