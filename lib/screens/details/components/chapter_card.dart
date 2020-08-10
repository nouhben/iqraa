import 'package:flutter/material.dart';
import 'package:iqraa/constants.dart';
import 'package:iqraa/models/Chapter.dart';
import 'package:iqraa/size_config.dart';

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
