import 'package:flutter/material.dart';

class Rose_detail extends StatelessWidget {
  const Rose_detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Here is detail about Rose"),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  width: 500,
                ),
                Image.network(
                  "https://images.unsplash.com/photo-1559563362-c667ba5f5480?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=401&q=80",
                  height: 400,
                  width: 250,
                ),
                Text(
                  "ROSE",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 12,
                  width: 10,
                ),
                SizedBox(
                  width: 80,
                ),
                Text(
                  "rose, (genus Rosa), genus of some 100 species of perennial shrubs in the rose family (Rosaceae). Roses are native primarily to the temperate regions of the Northern Hemisphere. Many roses are cultivated for their beautiful flowers, which range in colour from white through various tones of yellow and pink to dark crimson and maroon, and most have a delightful fragrance, which varies according to the variety and to climatic conditions.",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ));
  }
}
