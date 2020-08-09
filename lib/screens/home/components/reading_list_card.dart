import 'package:flutter/material.dart';
import 'package:iqraa/components/tow_side_round_button.dart';
import 'package:iqraa/constants.dart';
import 'package:iqraa/models/book.dart';
import 'package:iqraa/screens/home/components/book_rating.dart';

class ReadingListCard extends StatelessWidget {
  final Book book;
  final Function pressDetails, pressRead;
  const ReadingListCard({
    Key key,
    @required this.book,
    this.pressDetails,
    this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245, //SizeConfig.defaultSize * 28.5, //245
      width: 202,
      margin: EdgeInsets.only(left: 24, bottom: 40),
      //SizeConfig.defaultSize * 20.2,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              height: 221, //SizeConfig.defaultSize * 22.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 18),
                    blurRadius: 43,
                    //spreadRadius: -12.0,
                    color: kShadowColor,
                  ),
                ],
              ), //221
            ),
          ),
          Image.asset(book.image, width: 150),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                BookRating(score: book.ratingScrore),
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 85.0,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(color: kBlackColor),
                        children: [
                          TextSpan(
                            text: '${book.title}\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: book.author,
                            style: TextStyle(
                              color: kLightBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      InkWell(
                        onTap: pressDetails,
                        child: Container(
                          width: 101,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text('Details'),
                        ),
                      ),
                      Expanded(
                        child: TowSideRoundButton(
                          text: 'Read',
                          onPress: pressRead,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
