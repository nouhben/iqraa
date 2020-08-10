import 'package:flutter/material.dart';
import 'package:iqraa/constants.dart';
import 'package:iqraa/models/Chapter.dart';
import 'package:iqraa/models/book.dart';
import 'package:iqraa/screens/details/components/book_info.dart';
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
                Padding(
                  padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.4 - 30),
                  child: Column(
                    children: List.generate(
                      book.chapters.length,
                      (index) => ChapterCard(
                        chapter: book.chapters[index],
                        onPress: () {
                          //push the chapter page
                        },
                      ),
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

class ChapterCard extends StatelessWidget {
  final Chapter chapter;
  final Function onPress;
  const ChapterCard({
    Key key,
    this.chapter,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      margin: EdgeInsets.only(bottom: 16.0),
      width: SizeConfig.screenWidth - 48,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(39), boxShadow: [
        BoxShadow(
          offset: Offset(0, 10),
          blurRadius: 33,
          color: Color(0xffD3D3D3),
        ),
      ]),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Chapter ${chapter.number ?? 0}: ${chapter.title ?? 'Intro'}\n',
                  style: TextStyle(color: kBlackColor, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: chapter.tag ?? 'Change your life!',
                  style: TextStyle(color: kLightBlackColor, fontSize: 12),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: this.onPress),
        ],
      ),
    );
  }
}
