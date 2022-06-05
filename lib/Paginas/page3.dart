import 'package:flutter/material.dart';
import 'dart:math';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPageBody(),
    );
  }
}

class MyPageBody extends StatefulWidget {
  MyPageBody({Key? key}) : super(key: key);
  @override
  State<MyPageBody> createState() => _MyPageBodyState();
}

class _MyPageBodyState extends State<MyPageBody> {
  int random = Random().nextInt(40);
  String img = '';
  String estado = 'Soleado';
  String TipoMedida = 'C';
  void _converC() {
    setState(() {
      random = random + 32;
      TipoMedida = 'F';
    });
  }

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = const LinearGradient(
      colors: <Color>[
        Color.fromARGB(255, 168, 216, 246),
        Color.fromARGB(255, 44, 174, 255)
      ],
    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

    if (random <= 10 && TipoMedida == 'C') {
      img = 'assets/nevado.png';
      estado = 'Nevado';
    } else if (random <= 15 && TipoMedida == 'C') {
      img = 'assets/ventoso.png';
      estado = 'Ventoso';
    } else if (random <= 20 && TipoMedida == 'C') {
      img = 'assets/tormenta.png';
      estado = 'Tormenta';
    } else if (random <= 25 && TipoMedida == 'C') {
      img = 'assets/lluvia.png';
      estado = 'Lluvioso';
    } else if (random <= 29 && TipoMedida == 'C') {
      img = 'assets/nublado.png';
      estado = 'nublado';
    } else if (random <= 35 && TipoMedida == 'C') {
      img = 'assets/caluroso.png';
      estado = 'Caluroso';
    } else if (random <= 40 && TipoMedida == 'C') {
      img = 'assets/sol.png';
      estado = 'Soleado';
    }
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$random°$TipoMedida",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 60,
                  foreground: Paint()..shader = linearGradient),
            ),
            Image.asset(
              img,
              width: 600,
              height: 300,
            ),
            Text(
              estado,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  foreground: Paint()..shader = linearGradient),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _converC,
        tooltip: 'Convertir a Farenheit',
        child: const Text('°F'),
      ),
    ));
  }
}
