import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class AnimacoesExplicitasExercicio01 extends StatefulWidget {
  const AnimacoesExplicitasExercicio01({Key? key}) : super(key: key);

  @override
  _AnimacoesExplicitas01State createState() => _AnimacoesExplicitas01State();
}

class _AnimacoesExplicitas01State extends State<AnimacoesExplicitasExercicio01>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animationTween;
  late Animation<Alignment> animationAlign;
  var duration = const Duration(seconds: 1);

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: duration,
    );

    animationTween = Tween<double>(begin: 100, end: 0).animate(controller);
    animationAlign =
        AlignmentTween(begin: Alignment.bottomRight, end: Alignment.topCenter)
            .animate(controller);

    animationTween.addListener(() {
      setState(() {
        //reinderia o widget
      });
    });

    animationAlign.addListener(() {
      setState(() {
        //reinderia o widget
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    toggle() {
      if (animationTween.isCompleted) {
        controller.reverse();
      } else {
        controller.forward();
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafio do Botão Flutuante'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: toggle,
          child: Align(
            alignment: animationAlign.value,
            child: Container(
              width: 160 - animationTween.value,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(animationTween.value),
              ),
              child: Center(
                child: (animationTween.isDismissed &&
                        animationTween.value >= 99)
                    ? Icon(
                        FontAwesome5Solid.hand_pointer,
                        color: Colors.white,
                        size: 32,
                      )
                    : (animationTween.isCompleted && animationTween.value == 0)
                        ? Text("Clique aqui!",
                            style: TextStyle(color: Colors.white, fontSize: 18))
                        : null,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
