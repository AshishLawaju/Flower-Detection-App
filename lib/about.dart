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
          title: Text("About Bagaicha"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            borderRadius: BorderRadius.circular(30),
            //color: Colors.red,
            elevation: 30,
            shadowColor: Colors.cyanAccent,
            child: Container(
              height: 500,
              width: 420,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Bagaich is a flower idetification application.   ",
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 400,
                  ),
                  Text("Developed By 750307 750307 750307 750307")
                ],
              ),
            ),
          ),
        ));
  }
}
