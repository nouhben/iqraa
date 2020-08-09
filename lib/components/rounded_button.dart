import 'package:flutter/material.dart';
import 'package:iqraa/size_config.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final Function onPress;
  final double verticalPadding, horizontalPadding, verticalMargin, horizontalMargin;
  const RoundedButton({
    this.label,
    this.onPress,
    Key key,
    this.verticalPadding,
    this.horizontalPadding,
    this.verticalMargin,
    this.horizontalMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onPress,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: this.verticalMargin ?? SizeConfig.defaultSize * 1.6,
          horizontal: this.horizontalMargin ?? 0.0, //16
        ),
        padding: EdgeInsets.symmetric(
          vertical: this.verticalPadding ?? SizeConfig.defaultSize * 1.6,
          horizontal: this.horizontalPadding ?? SizeConfig.defaultSize * 3, //30 //16
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 21),
              blurRadius: 45.0,
              spreadRadius: -12,
              color: Color(0xff666666).withOpacity(0.35),
              //opacity should be 35% & color same as the container
            ),
          ],
        ),
        child: Text(
          this.label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: SizeConfig.defaultSize * 1.6,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
