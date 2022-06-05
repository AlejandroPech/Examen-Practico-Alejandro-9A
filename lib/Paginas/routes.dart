import 'package:flutter/material.dart';
import 'package:proyecto_examen/Paginas/page1.dart';
import 'package:proyecto_examen/Paginas/page2.dart';

import 'page3.dart';
import 'page4.dart';
import 'page5.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> MyPages = [
      const Page1(),
      const Page2(),
      const Page3(),
      const Page4(),
      const Page5(),
    ];
    return MyPages[index];
  }
}
