import 'package:book_api/models/book_api/books/buy_links.dart';
import 'package:json_annotation/json_annotation.dart';

import 'isbn.dart';

part 'books.g.dart';

@JsonSerializable(explicitToJson: true)
class Books {
  Books({
    required this.rank,
    required this.rankLastWeek,
    required this.weeksOnList,
    required this.asterisk,
    required this.dagger,
    required this.title,
    required this.description,
    required this.ageGroup,
    required this.amazonProductUrl,
    required this.articleChapterLink,
    required this.author,
    required this.bookImage,
    required this.bookImageHeight,
    required this.bookImageWidth,
    required this.bookReviewLink,
    required this.buyLinks,
    required this.contributor,
    required this.contributorNote,
    required this.firstChapterLink,
    required this.isbns,
    required this.primaryIsbn10,
    required this.price,
    required this.primaryIsbn13,
    required this.sundayReviewLink,
    required this.publisher,
  });

  @JsonKey(defaultValue: 0, name: 'rank')
  int rank;

  @JsonKey(defaultValue: 0, name: 'rank_last_week')
  int rankLastWeek;

  @JsonKey(defaultValue: 0, name: 'weeks_on_list')
  int weeksOnList;

  @JsonKey(defaultValue: 0, name: 'asterisk')
  int asterisk;

  @JsonKey(defaultValue: 0, name: 'dagger')
  int dagger;

  @JsonKey(defaultValue: '', name: 'primary_isbn10')
  String primaryIsbn10;

  @JsonKey(defaultValue: '', name: 'primary_isbn13')
  String primaryIsbn13;

  @JsonKey(defaultValue: '', name: 'publisher')
  String publisher;

  @JsonKey(defaultValue: '', name: 'description')
  String description;

  @JsonKey(defaultValue: '', name: 'price')
  String price;

  @JsonKey(defaultValue: '', name: 'title')
  String title;

  @JsonKey(defaultValue: '', name: 'author')
  String author;

  @JsonKey(defaultValue: '', name: 'contributor')
  String contributor;

  @JsonKey(defaultValue: '', name: 'contributor_note')
  String contributorNote;

  @JsonKey(defaultValue: '', name: 'book_image')
  String bookImage;

  @JsonKey(defaultValue: 0, name: 'book_image_width')
  int bookImageWidth;

  @JsonKey(defaultValue: 0, name: 'book_image_height')
  int bookImageHeight;

  @JsonKey(defaultValue: '', name: 'amazon_product_url')
  String amazonProductUrl;

  @JsonKey(defaultValue: '', name: 'age_group')
  String ageGroup;

  @JsonKey(defaultValue: '', name: 'book_review_link')
  String bookReviewLink;

  @JsonKey(defaultValue: '', name: 'first_chapter_link')
  String firstChapterLink;

  @JsonKey(defaultValue: '', name: 'sunday_review_link')
  String sundayReviewLink;

  @JsonKey(defaultValue: '', name: 'article_chapter_link')
  String articleChapterLink;

  @JsonKey(defaultValue: [], name: 'isbns')
  List <Isbn> isbns;

  @JsonKey(defaultValue: [], name: 'buy_links')
  List <BuyLinks> buyLinks;

  factory Books.fromJson(Map<String, dynamic> json) => _$BooksFromJson(json);

  Map<String, dynamic> toJson() => _$BooksToJson(this);


}
