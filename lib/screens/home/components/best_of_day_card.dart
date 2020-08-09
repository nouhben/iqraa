import 'package:flutter/material.dart';
import 'package:iqraa/components/tow_side_round_button.dart';
import 'package:iqraa/constants.dart';
import 'package:iqraa/models/book.dart';
import 'package:iqraa/screens/home/components/book_rating.dart';
import 'package:iqraa/size_config.dart';

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
