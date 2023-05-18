import 'package:flutter/material.dart';
import 'package:flutter_composite/utils/component.dart';
import 'package:flutter_composite/utils/composite.dart';
import 'package:flutter_composite/utils/leaf.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Component? oya1;

  @override
  void initState() {
    super.initState();

    oya1  = Composite('親1');
    Component ko1   = Composite('子1');
    Component mago1 = Leaf('孫1');
    Component ko2   = Composite('子2');
    Component mago2 = Leaf('孫2');
    Component mago3 = Leaf('孫3');
    Component ko3   = Leaf('子3');
    oya1?.add(ko1);
    oya1?.add(ko2);
    oya1?.add(ko3);
    ko1.add(mago1);
    ko2.add(mago2);
    ko2.add(mago3);
  }

  void _output() {
    oya1?.disp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _output,
              child: Text('出力'),
            ),
          ],
        ),
      ),
    );
  }
}