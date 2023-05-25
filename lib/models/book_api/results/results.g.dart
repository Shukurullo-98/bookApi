// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      bestsellersDate: json['bestsellers_date'] as String? ?? '',
      books: json['books'] as String? ?? '',
      corrections: json['corrections'] as String? ?? '',
      displayName: json['display_name'] as String? ?? '',
      listName: json['list_name'] as String? ?? '',
      listNameEncoded: json['list_name_encoded'] as String? ?? '',
      nextPublishedDate: json['next_published_date'] as String? ?? '',
      normalListEndsAt: json['normal_list_ends_at'] as String? ?? '',
      previousPublishedDate: json['previous_published_date'] as String? ?? '',
      publishedDate: json['published_date'] as String? ?? '',
      publishedDateDescription:
          json['published_date_description'] as String? ?? '',
      updated: json['updated'] as String? ?? '',
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'list_name': instance.listName,
      'list_name_encoded': instance.listNameEncoded,
      'bestsellers_date': instance.bestsellersDate,
      'published_date': instance.publishedDate,
      'published_date_description': instance.publishedDateDescription,
      'next_published_date': instance.nextPublishedDate,
      'previous_published_date': instance.previousPublishedDate,
      'display_name': instance.displayName,
      'normal_list_ends_at': instance.normalListEndsAt,
      'updated': instance.updated,
      'books': instance.books,
      'corrections': instance.corrections,
    };
