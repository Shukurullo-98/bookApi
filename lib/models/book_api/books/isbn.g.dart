// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isbn.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Isbn _$IsbnFromJson(Map<String, dynamic> json) => Isbn(
      isbn10: json['isbn10'] as String? ?? '',
      isbn13: json['isbn13'] as String? ?? '',
    );

Map<String, dynamic> _$IsbnToJson(Isbn instance) => <String, dynamic>{
      'isbn10': instance.isbn10,
      'isbn13': instance.isbn13,
    };
