import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacementNamed('/home'),
    );
  }

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    var _ratioImg = (287 * (428 / 287) / _size.width);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ClipRect(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            height: 150,
            width: _size.width / 12 * 10,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.white,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            child: Center(
              child: Image.asset(
                "assets/images/masterclass_logo.png",
                scale: _ratioImg,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
