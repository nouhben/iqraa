import 'package:flutter/material.dart';
import 'package:iqraa/constants.dart';
import 'package:iqraa/size_config.dart';

class BookRating extends StatelessWidget {
  final double score;
  const BookRating({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(SizeConfig.defaultSize),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 7),
            blurRadius: 20.0,
            color: kShadowColor.withOpacity(0.5),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            Icons.star,
            color: kIconColor,
            size: SizeConfig.defaultSize * 1.5,
          ),
          SizedBox(height: SizeConfig.defaultSize),
          Text(
            this.score.toString() ?? '0',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
