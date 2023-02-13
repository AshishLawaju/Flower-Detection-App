import 'package:flutter/material.dart';

class aboutPage extends StatefulWidget {
  const aboutPage({Key? key}) : super(key: key);

  @override
  State<aboutPage> createState() => _aboutPageState();
}

class _aboutPageState extends State<aboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About Page"),
        ),
        body: Container(
            child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 50,
                ),
                Text("!)a,sndf")
              ],
            ),
          ],
        )));
  }
}
