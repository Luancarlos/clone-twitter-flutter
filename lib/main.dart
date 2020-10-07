import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double sizeimage = 70;

  @override
  void initState() {
    // TODO: implement didUpdateWidget
    super.initState();

    sizeimage = 70;

    new Future.delayed(const Duration(milliseconds: 4700), () {
      setState(() {
        sizeimage = 60;
      });
    });

    new Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        sizeimage = 2500;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    return Container(
      width: screen.width,
      height: screen.height,
      color: Color(0xff23aced),
      child: Stack(children: [
        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          width: sizeimage,
          height: sizeimage,
          top: screen.height / 2 - (sizeimage / 2),
          left: screen.width / 2 - (sizeimage / 2),
          child: Image.asset(
            'assets/images/twitter.png',
            scale: 0.1,
          ),
        )
      ]),
    );
  }
}
