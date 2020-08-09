import 'package:flutter/material.dart';
import 'package:iqraa/constants.dart';
import 'package:iqraa/screens/home/components/book_rating.dart';
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
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            SizedBox(height: SizeConfig.defaultSize * 3),
            Container(
              height: SizeConfig.defaultSize * 24.5, //245
              width: SizeConfig.defaultSize * 20.2,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: SizeConfig.defaultSize * 22.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(SizeConfig.defaultSize * 3),
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
                  Image.asset(
                    'images/book-1.png',
                    width: SizeConfig.defaultSize * 15,
                  ),
                  Positioned(
                    top: 35,
                    right: 10,
                    child: Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                        BookRating(score: 4.9),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
