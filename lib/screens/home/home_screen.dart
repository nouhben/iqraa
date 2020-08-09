import 'package:flutter/material.dart';
import 'package:iqraa/components/tow_side_round_button.dart';
import 'package:iqraa/constants.dart';
import 'package:iqraa/models/book.dart';
import 'package:iqraa/screens/home/components/book_rating.dart';
import 'package:iqraa/screens/home/components/reading_list_card.dart';
import 'package:iqraa/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/main_page_bg.png',
                  ),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
              padding: EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: SizeConfig.defaultSize * 6),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(text: 'What are you \nreading'),
                          TextSpan(
                            text: ' today?',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(book: books[0]),
                        ReadingListCard(book: books[1]),
                        ReadingListCard(book: books[2]),
                        SizedBox(width: 30.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            children: [
                              TextSpan(text: 'Best of the '),
                              TextSpan(
                                text: 'day',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kBlackColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        BestOfDayCard(
                          book: books[2],
                        ),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            children: [
                              TextSpan(text: 'Continue '),
                              TextSpan(
                                text: 'reading...',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          height: 80.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(39.0),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 18),
                                blurRadius: 40,
                                //spreadRadius: -12,
                                color: Color(0xffD3D3D3).withOpacity(0.85),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(39),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 28.0, right: 20),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                books[0].title,
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                books[0].author,
                                                style: TextStyle(color: kLightBlackColor),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomRight,
                                                child: Text(
                                                  'Chapter 7 of 10',
                                                  style: TextStyle(color: kLightBlackColor, fontSize: 10),
                                                ),
                                              ),
                                              SizedBox(height: 6),
                                            ],
                                          ),
                                        ),
                                        Image.asset(books[0].image),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: SizeConfig.screenWidth * 0.6,
                                  height: 7.0,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40.0),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BestOfDayCard extends StatelessWidget {
  final Book book;
  final String marketingText, quotFromText;
  const BestOfDayCard({
    Key key,
    @required this.book,
    this.marketingText,
    this.quotFromText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24),
      height: 205,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              height: 185,
              //width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffeaeaea).withOpacity(0.45),
                //
                borderRadius: BorderRadius.circular(29),
              ),
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: SizeConfig.screenWidth * 0.35,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.marketingText ?? 'New yourk Time best 11th may 2020',
                    style: TextStyle(color: kBlackColor, fontSize: 9.0),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    book.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    book.author,
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      BookRating(score: 4.9),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Text(
                          this.quotFromText ?? 'When earth was flat and everyone wanted to win the game of the best and people... .',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 10.0, color: kLightBlackColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'images/book-3.png',
              width: SizeConfig.screenWidth * 0.37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40.0,
              width: SizeConfig.screenWidth * 0.3,
              child: TowSideRoundButton(
                text: 'Read',
                onPress: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
