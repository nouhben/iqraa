import 'package:flutter/material.dart';
import 'package:iqraa/components/rounded_button.dart';
import 'package:iqraa/constants.dart';
import 'package:iqraa/screens/home_screen.dart';
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
