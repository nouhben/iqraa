import 'package:flutter/material.dart';

import 'package:iqraa/models/book.dart';

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
            ReadingListCard(book: books[0]),
          ],
        ),
      ),
    );
  }
}
