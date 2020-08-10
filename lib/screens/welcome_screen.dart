import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqraa/components/rounded_button.dart';
import 'package:iqraa/screens/home/home_screen.dart';
import 'package:iqraa/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  //إقرء
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
                style: GoogleFonts.arefRuqaa(textStyle: Theme.of(context).textTheme.headline1), //Theme.of(context).textTheme.headline2,
                children: [
                  TextSpan(
                    text: "إقر",
                  ),
                  TextSpan(
                    text: "ء",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 55.0,
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
                  //TODO: save to local tha the welcome screen is done
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => HomeScreen(),
                  //   ),
                  // );
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
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
