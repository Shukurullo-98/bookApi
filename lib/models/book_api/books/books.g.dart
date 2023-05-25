// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Books _$BooksFromJson(Map<String, dynamic> json) => Books(
      rank: json['rank'] as int? ?? 0,
      rankLastWeek: json['rank_last_week'] as int? ?? 0,
      weeksOnList: json['weeks_on_list'] as int? ?? 0,
      asterisk: json['asterisk'] as int? ?? 0,
      dagger: json['dagger'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      ageGroup: json['age_group'] as String? ?? '',
      amazonProductUrl: json['amazon_product_url'] as String? ?? '',
      articleChapterLink: json['article_chapter_link'] as String? ?? '',
      author: json['author'] as String? ?? '',
      bookImage: json['book_image'] as String? ?? '',
      bookImageHeight: json['book_image_height'] as int? ?? 0,
      bookImageWidth: json['book_image_width'] as int? ?? 0,
      bookReviewLink: json['book_review_link'] as String? ?? '',
      buyLinks: (json['buy_links'] as List<dynamic>?)
              ?.map((e) => BuyLinks.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      contributor: json['contributor'] as String? ?? '',
      contributorNote: json['contributor_note'] as String? ?? '',
      firstChapterLink: json['first_chapter_link'] as String? ?? '',
      isbns: (json['isbns'] as List<dynamic>?)
              ?.map((e) => Isbn.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      primaryIsbn10: json['primary_isbn10'] as String? ?? '',
      price: json['price'] as String? ?? '',
      primaryIsbn13: json['primary_isbn13'] as String? ?? '',
      sundayReviewLink: json['sunday_review_link'] as String? ?? '',
      publisher: json['publisher'] as String? ?? '',
    );

Map<String, dynamic> _$BooksToJson(Books instance) => <String, dynamic>{
      'rank': instance.rank,
      'rank_last_week': instance.rankLastWeek,
      'weeks_on_list': instance.weeksOnList,
      'asterisk': instance.asterisk,
      'dagger': instance.dagger,
      'primary_isbn10': instance.primaryIsbn10,
      'primary_isbn13': instance.primaryIsbn13,
      'publisher': instance.publisher,
      'description': instance.description,
      'price': instance.price,
      'title': instance.title,
      'author': instance.author,
      'contributor': instance.contributor,
      'contributor_note': instance.contributorNote,
      'book_image': instance.bookImage,
      'book_image_width': instance.bookImageWidth,
      'book_image_height': instance.bookImageHeight,
      'amazon_product_url': instance.amazonProductUrl,
      'age_group': instance.ageGroup,
      'book_review_link': instance.bookReviewLink,
      'first_chapter_link': instance.firstChapterLink,
      'sunday_review_link': instance.sundayReviewLink,
      'article_chapter_link': instance.articleChapterLink,
      'isbns': instance.isbns.map((e) => e.toJson()).toList(),
      'buy_links': instance.buyLinks.map((e) => e.toJson()).toList(),
    };
