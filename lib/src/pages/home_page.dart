import 'package:custom_painter/src/pages/header_page.dart';
import 'package:custom_painter/src/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Diseños App'),
      ),*/
      body: SquareHeader()
    );
  }
}
