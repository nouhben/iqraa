import 'package:flutter/material.dart';
import 'package:iqraa/components/rounded_button.dart';
import 'package:iqraa/constants.dart';
import 'package:iqraa/models/book.dart';
import 'package:iqraa/screens/home/components/book_rating.dart';
import 'package:iqraa/size_config.dart';

class DetailsScreen extends StatelessWidget {
  final Book book;
  const DetailsScreen({Key key, this.book}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: SizeConfig.screenHeight * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/bg.png'),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50.0),
                      bottomLeft: Radius.circular(50.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      children: [
                        SizedBox(height: SizeConfig.screenHeight * 0.1),
                        BookInfo(book: book),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.title,
                style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'When earth was flat and everyone wanted to win the game of the best and people... .',
                          style: TextStyle(
                            fontSize: 10,
                            height: 1.5,
                            color: kLightBlackColor,
                          ),
                          maxLines: 5,
                        ),
                        SizedBox(height: 5),
                        RoundedButton(
                          label: 'Read',
                          onPress: () {},
                          //horizontalPadding: 16,
                          verticalPadding: 10.0,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
                      BookRating(score: book.ratingScore),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Image.asset(
          book.image,
          width: 200.0,
        ),
      ],
    );
  }
}
