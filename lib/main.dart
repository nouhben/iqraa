import 'package:flutter/material.dart';
import 'package:iqraa/constants.dart';
import 'package:iqraa/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eBook reader',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kBlackColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Bitmap.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline2,
                children: [
                  TextSpan(
                    text: "flamin",
                  ),
                  TextSpan(
                    text: "Go.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: SizeConfig.defaultSize * 27.5,
              child: RoundedButton(
                label: 'Start reading',
                onPress: () {
                  //TODO: save to local tha the welcom screen is done
                  //TODO: push the login screen
                  print('pressed');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String label;
  final Function onPress;
  const RoundedButton({
    this.label,
    this.onPress,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onPress,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: SizeConfig.defaultSize * 1.6, //16
        ),
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.defaultSize * 1.6,
          horizontal: SizeConfig.defaultSize * 3, //30 //16
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
