import 'dart:ui';

import 'package:flutter/material.dart';

class Health extends StatefulWidget {
  const Health({Key? key}) : super(key: key);

  @override
  State<Health> createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("MERO FLOWER DOCTOR"),
      ),
      body: Container(
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/health.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Mero flower doctor availabe soon !",
                style: TextStyle(fontSize: 22, color: Colors.blueGrey),
              )
            ],
          )),
    );
  }
}
