import 'package:flutter/material.dart';
import 'package:m2_app_tarjeta_presentacion/providers/main.provider.dart';
import 'package:m2_app_tarjeta_presentacion/widgets/fade_in_text.widget.dart';
import 'package:provider/provider.dart';

class Slide1Widget extends StatefulWidget {
  const Slide1Widget({super.key});

  @override
  State<Slide1Widget> createState() => _Slide1WidgetState();
}

class _Slide1WidgetState extends State<Slide1Widget> {
  final String greetingText =
      'Hola soy Rodrigo, desliza de derecha a izquierda para visualizar mi información';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Builder(
                builder: (BuildContext c) {
                  int currentSlide = Provider.of<MainProvider>(c).currentSlide;

                  if (currentSlide == 0) {
                    return FadeInText(
                      text: greetingText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    );
                  } else {
                    return const CircularProgressIndicator(color: Colors.white);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
