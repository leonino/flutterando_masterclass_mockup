import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class AnimacoesImplicitasExercicio01 extends StatefulWidget {
  const AnimacoesImplicitasExercicio01({Key? key}) : super(key: key);

  @override
  _AnimacoesImplicitas01State createState() => _AnimacoesImplicitas01State();
}

class _AnimacoesImplicitas01State
    extends State<AnimacoesImplicitasExercicio01> {
  var isCircular = true;
  var isShow = true;
  var duration = const Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    move() async {
      setState(() {
        isCircular = !isCircular;
        isShow = false;
        Future.delayed(duration).then((value) {
          isShow = true;
          setState(() {});
        });
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Desafio do Botão Flutuante')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: move,
          child: AnimatedAlign(
            alignment:
                (isCircular) ? Alignment.bottomRight : Alignment.topCenter,
            duration: duration,
            child: AnimatedContainer(
              duration: duration,
              curve: Curves.ease,
              width: isCircular ? 60 : 160,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(isCircular ? 100 : 0),
              ),
              child: Center(
                child: (isCircular && isShow)
                    ? Icon(
                        FontAwesome5Solid.hand_pointer,
                        color: Colors.white,
                        size: 32,
                      )
                    : (!isCircular && isShow)
                        ? Text(
                            "Clique aqui!",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
