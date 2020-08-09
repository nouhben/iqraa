import 'package:flutter/material.dart';

class TowSideRoundButton extends StatelessWidget {
  final String text;
  final Function onPress;
  const TowSideRoundButton({
    Key key,
    this.text,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onPress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(29.0),
            bottomLeft: Radius.circular(29.0),
          ),
        ),
        child: Text(
          this.text ?? '',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
