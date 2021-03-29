import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Startup Name Generator',
        home: Scaffold(
          body: Body(),
        ),
        theme: ThemeData(
          primaryColor: Colors.white,
        ));
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<Widget> list = [];

  @override
  void initState() {
    list.add(Pair());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: list,
    );
  }
}

class Pair extends StatefulWidget {
  @override
  _PairState createState() => _PairState();
}

class _PairState extends State<Pair> {
  var text = "test";
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        onSubmitted: (out) => setState(() {
          text = out;
        }),
      ),
      Text(text)
    ]);
  }
}
