import 'package:flutter/material.dart';
import 'package:iqraa/constants.dart';
import 'package:iqraa/models/book.dart';
import 'package:iqraa/size_config.dart';

class ContinueReadingRoundCard extends StatelessWidget {
  final Book book;
  final int currentChapter;
  const ContinueReadingRoundCard({
    Key key,
    @required this.book,
    this.currentChapter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                            book.title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            book.author,
                            style: TextStyle(color: kLightBlackColor),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Chapter ${currentChapter ?? 1} of ${book.chapters}',
                              style: TextStyle(color: kLightBlackColor, fontSize: 10),
                            ),
                          ),
                          SizedBox(height: 6),
                        ],
                      ),
                    ),
                    Image.asset(book.image),
                  ],
                ),
              ),
            ),
            Container(
              //TODO:make sure the current chapter does not exceeds the numb of chapters
              //number of chapter is 100% ==>
              width: SizeConfig.screenWidth * (currentChapter / book.chapters) - SizeConfig.defaultSize,
              height: 7.0,
              decoration: BoxDecoration(
                color: kProgressIndicator,
                borderRadius: BorderRadius.circular(7.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
