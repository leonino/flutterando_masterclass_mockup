import 'package:flutter/material.dart';

class UnderControlPage extends StatelessWidget {
  const UnderControlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Material(
      color: Colors.green,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacementNamed('/tinder');
        },
        child: Container(
          color: Colors.black,
          height: double.infinity,
          width: double.infinity,
          child: Visibility(
            visible: isPortrait,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ///
                /// LOGO / TITULO / SUBTITULO
                ///
                TopoWidget(isPortrait: isPortrait),
                // SizedBox(width: 10, height: 10),

                ///
                /// BUTTOM / SIGNUP / EMAIL / GOOGLE
                ///
                ButtonWidget(),
              ],
            ),
            replacement: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ///
                /// LOGO / TITULO / SUBTITULO
                ///
                TopoWidget(isPortrait: isPortrait),
                SizedBox(width: 10, height: 10),

                ///
                /// BUTTOM / SIGNUP / EMAIL / GOOGLE
                ///
                ButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopoWidget extends StatelessWidget {
  const TopoWidget({
    Key? key,
    required this.isPortrait,
  }) : super(key: key);

  final bool isPortrait;

  @override
  Widget build(BuildContext context) {
    const _textStyle_subtitulo = TextStyle(
        fontSize: 15, fontWeight: FontWeight.normal, color: Colors.white54);
    const _textStyle_titulo = TextStyle(
        fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white);

    var _mainAxisAlignment =
        (isPortrait) ? MainAxisAlignment.center : MainAxisAlignment.start;
    return Expanded(
      flex: 3,
      child: Column(
        mainAxisAlignment: _mainAxisAlignment,
        children: [
          SizedBox(width: 50, height: 50),
          Image.asset(
            "assets/logo_under_control.png",
            scale: 0.25,
            width: 180,
            height: 180,
          ),
          const Text('Get Your Money', style: _textStyle_titulo),
          const Text('Under Control', style: _textStyle_titulo),
          SizedBox(height: 14, width: 14),
          const Text('Manage your express.', style: _textStyle_subtitulo),
          const Text('Seamlessly.', style: _textStyle_subtitulo),
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF5e5ce5),
              ),
              onPressed: () {},
              child: Container(
                //  decoration: BoxDecoration(),
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Center(
                  child: const Text(
                    'Sign Up with Email ID',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 3, width: 3),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFFFFFF),
              ),
              onPressed: () {},
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/google_logo.png',
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 6, height: 6),
                    const Text(
                      'Sign Up with Google',
                      style: TextStyle(
                        fontSize: 14,
                        //letterSpacing: 0.5,
                        fontWeight: FontWeight.w800,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50, width: 50),

            ///
            /// SIGN IN
            ///
            Container(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text('Alredy have an account?',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      )),
                  SizedBox(height: 4, width: 4),
                  Text('Sign In',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationThickness: 2.85,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
