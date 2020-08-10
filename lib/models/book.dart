import 'package:iqraa/models/Chapter.dart';

class Book {
  final String image;
  final String author;
  final String title;
  final String description;
  final double ratingScore;
  final int numberOfChapters;
  final List<Chapter> chapters;

  const Book({
    this.image,
    this.author,
    this.title,
    this.description,
    this.ratingScore,
    this.numberOfChapters,
    this.chapters,
  });
}

//Test books
List<Book> books = [
  Book(
    author: 'Gary Vanyerchuck',
    title: 'Crushing & Influence',
    image: 'images/book-1.png',
    description: 'some text about the book mostely marketing stuff',
    ratingScore: 4.9,
    numberOfChapters: 4,
    chapters: [
      Chapter(title: 'Money', tag: 'Your life is about to change', number: 1, startingPage: 3, endingPage: 7),
      Chapter(title: 'Power', tag: 'Everything loves powere', number: 2, startingPage: 7, endingPage: 40),
      Chapter(title: 'Influence', tag: 'Influence easily like never before', number: 3, startingPage: 41, endingPage: 77),
      Chapter(title: 'Win', tag: 'Winning is what matters', number: 4, startingPage: 78, endingPage: 102),
    ],
  ),
  Book(
    author: 'Joel Herman',
    title: 'Top Ten Business Hacks',
    image: 'images/book-2.png',
    description: 'some text about the book mostely marketing stuff',
    ratingScore: 4.8,
    numberOfChapters: 4,
  ),
  Book(
    author: 'Fuck Him',
    title: 'How To friends & Infkluence People',
    image: 'images/book-3.png',
    description: 'some text about the book mostely marketing stuff',
    ratingScore: 4.8,
    numberOfChapters: 6,
  ),
];
