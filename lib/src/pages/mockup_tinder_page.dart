import 'package:flutter/material.dart';

import 'package:flutterando_mastersclass_mockups/src/shared/constantes.dart';

class TinderPage extends StatelessWidget {
  const TinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    var _icon_arrow_back =
        Icon(Icons.arrow_back_ios, size: 25, color: Color(cor_tinder_texto));

    return Material(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacementNamed('/under');
        },
        child: Container(
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(cor_tinder_fundo_inicial),
                Color(cor_tinder_fundo_fim)
              ],
            ),
          ),
          height: double.infinity,
          width: double.infinity,
          child: (isPortrait)
              ? Stack(
                  children: [
                    _icon_arrow_back,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TopoTelaLogin(isPortrait: isPortrait),
                        BottomTelaLogin(isPortrait: isPortrait),
                      ],
                    ),
                  ],
                )
              : Stack(
                  children: [
                    _icon_arrow_back,
                    Row(
                      children: [
                        TopoTelaLogin(isPortrait: isPortrait),
                        SizedBox(height: 10, width: 10),
                        BottomTelaLogin(isPortrait: isPortrait),
                      ],
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

class TopoTelaLogin extends StatelessWidget {
  const TopoTelaLogin({
    Key? key,
    required this.isPortrait,
  }) : super(key: key);

  final bool isPortrait;

  @override
  Widget build(BuildContext context) {
    MainAxisAlignment mainAxisAlignTop =
        (isPortrait) ? MainAxisAlignment.end : MainAxisAlignment.center;
    return Expanded(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: mainAxisAlignTop,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (isPortrait) ? Spacer() : SizedBox(),
            Container(
              color: Colors.transparent,
              child: Image.asset(
                'assets/images/logo_tinder.png',
                width: 220,
                scale: 0.5,
                height: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 90,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text:
                      'By tapping Create Account or Sign In, you agree to our ',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      height: 1.4,
                      fontFamily: 'Montserrat, sans-serif',
                      color: Color(cor_tinder_texto)),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(text: '. Learn how we process your data in our '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Cookies Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomTelaLogin extends StatelessWidget {
  const BottomTelaLogin({
    Key? key,
    required this.isPortrait,
  }) : super(key: key);

  final bool isPortrait;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: (isPortrait) ? 0 : 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OutlineButtonIcon(
            image: 'assets/icons/icon-apple.png',
            title: 'SIGN IN WITH APPLE',
          ),
          SizedBox(height: 10, width: 10),
          OutlineButtonIcon(
            image: 'assets/icons/icon_facebook_white.png',
            title: 'SIGN IN WITH FACEBOOK',
          ),
          SizedBox(height: 10, width: 10),
          OutlineButtonIcon(
            image: 'assets/icons/icon-conversation-balloon.png',
            title: 'SIGN WITH PHONE NUMBER',
          ),
          SizedBox(height: 10, width: 10),
          Container(
            height: 50,
            child: Center(
              child: Text(
                'Trouble Signing In?',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(cor_tinder_texto),
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          (isPortrait) ? SizedBox(height: 1) : SizedBox(height: 40)
        ],
      ),
    );
  }
}

class OutlineButtonIcon extends StatelessWidget {
  const OutlineButtonIcon({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(60),
        // color: Colors.white,
        border: Border.all(color: Color(cor_tinder_texto), width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: 25, height: 25),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                  color: Color(cor_tinder_texto),
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.5,
                  fontSize: 14),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
