class Book {
  final String image;
  final String author;
  final String title;
  final String description;
  final double ratingScore;
  final int chapters;
  const Book({
    this.image,
    this.author,
    this.title,
    this.description,
    this.ratingScore,
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
    chapters: 10,
  ),
  Book(
    author: 'Joel Herman',
    title: 'Top Ten Business Hacks',
    image: 'images/book-2.png',
    description: 'some text about the book mostely marketing stuff',
    ratingScore: 4.8,
    chapters: 4,
  ),
  Book(
    author: 'Fuck Him',
    title: 'How To friends & Infkluence People',
    image: 'images/book-3.png',
    description: 'some text about the book mostely marketing stuff',
    ratingScore: 4.8,
    chapters: 6,
  ),
];
