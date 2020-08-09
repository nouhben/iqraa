class Book {
  final String image;
  final String author;
  final String title;
  final String description;

  const Book({
    this.image,
    this.author,
    this.title,
    this.description,
  });
}

//Test books
List<Book> books = [
  Book(
    author: 'Gary Vanyerchuck',
    title: 'Crushing & Influence',
    image: 'images/book-1.png',
    description: 'some text about the book mostely marketing stuff',
  ),
  Book(
    author: 'Gary Vanyerchuck',
    title: 'Crushing & Influence',
    image: 'images/book-2.png',
    description: 'some text about the book mostely marketing stuff',
  ),
  Book(
    author: 'Gary Vanyerchuck',
    title: 'Crushing & Influence',
    image: 'images/book-3.png',
    description: 'some text about the book mostely marketing stuff',
  ),
];
