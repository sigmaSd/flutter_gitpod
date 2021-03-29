import 'package:flutter/material.dart';
import 'dart:io' show Process, Directory, File;

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

late final new_pair;

class _BodyState extends State<Body> {
  final List<Widget> list = [];

  @override
  void initState() {
    new_pair = () {
      list.add(Pair());
    };
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
  var text = "";
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        onSubmitted: (out) => setState(() {
          text = eval(out);
          new_pair();
        }),
      ),
      Text(text)
    ]);
  }

  String eval(String code) {
    print(4);
    final main = "fn main() {println!(\"{}\",$code)}";
    Process.runSync("cargo", ["new", "repl"]);
    Process.runSync("cd", ["repl"]);
    File("src/main").writeAsStringSync(main);
    final out = Process.runSync("cargo", ["run"]);
    print(out);
    return "${out.stderr}${out.stdout}";
  }
}
