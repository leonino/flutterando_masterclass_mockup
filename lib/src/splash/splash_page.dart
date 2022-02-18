import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    var _ratio_img = (287 * (428 / 287) / _size.width);
    print("Height: ${_size.height}");
    print("Width: ${_size.width}");
    print("Ratio: ${_ratio_img}");
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          "assets/images/masterclass_logo.png",
          scale: _ratio_img,
        ),
      ),
    );
  }
}
