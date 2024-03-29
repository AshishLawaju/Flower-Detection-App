import 'package:flutter/material.dart';

class rose_detail extends StatelessWidget {
  const rose_detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 45,
              ),
              Text(
                "Rose",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 6,
              ),
              Material(
                child: Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    Material(
                      elevation: 30,
                      borderRadius: BorderRadius.circular(20),
                      shadowColor: Colors.green,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1571260118569-c77a06a97a8c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                          height: 370,
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    "Description",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                width: 380,
                height: 80,
                child: Material(
                  elevation: 30,
                  shadowColor: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                          "\nScientific name: Rosa \nHigher classification: Rosoideae\nRank: Genus\n "),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 380,
                height: 200,
                child: Material(
                  elevation: 30,
                  shadowColor: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(30),
                  child: Column(
                    children: [
                      Container(
                        width: 350,
                        child: Text(
                          "\nA rose is either a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over three hundred species and tens of thousands of cultivars\nRoses are erect, climbing, or trailing shrubs, the stems of which are usually copiously armed with prickles of various shapes and sizes, commonly called thorns. The leaves are alternate and pinnately compound i.e., feather-formed, usually with oval leaflets that are sharply toothed.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
