import 'package:flutter/material.dart';

class SporPage extends StatefulWidget {
  const SporPage({Key? key}) : super(key: key);

  @override
  _SporPageState createState() => _SporPageState();
}

class _SporPageState extends State<SporPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spor"),
      ),
    );
  }
}
