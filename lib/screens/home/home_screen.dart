import 'package:flutter/material.dart';
import 'package:iqraa/constants.dart';
import 'package:iqraa/models/book.dart';
import 'package:iqraa/screens/home/components/book_rating.dart';
import 'package:iqraa/screens/home/components/reading_list_card.dart';
import 'package:iqraa/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  Container(
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
                                  'New yourk Time best 11th may 2020',
                                  style: TextStyle(color: kBlackColor, fontSize: 9.0),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  'How to win\nFriends & Influence',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                Text(
                                  'Gary Vaynerchuk',
                                  style: TextStyle(color: kLightBlackColor),
                                ),
                                SizedBox(height: 10.0),
                                Row(
                                  children: [
                                    BookRating(score: 4.9),
                                    SizedBox(width: 10.0),
                                    Expanded(
                                      child: Text(
                                        'When earth was flat and everyone wanted to win the game of the best and people... .',
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
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
