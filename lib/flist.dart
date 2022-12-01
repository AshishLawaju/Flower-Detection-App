import 'package:flutter/material.dart';

class flowerList extends StatefulWidget {
  const flowerList({Key? key}) : super(key: key);

  @override
  State<flowerList> createState() => _flowerListState();
}

class _flowerListState extends State<flowerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text("Flower Details"),
    ));
  }
}
