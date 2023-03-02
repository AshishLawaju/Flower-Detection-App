import 'package:flutter/material.dart';

class sunflower_detail extends StatelessWidget {
  const sunflower_detail({Key? key}) : super(key: key);

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
                "Sunflower",
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
                          "https://images.unsplash.com/photo-1597848212624-a19eb35e2651?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3VuZmxvd2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
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
                height: 140,
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
                          "\nKingdom: Plantae \nDivision: Magnoliophyta \nClass: Magnoliopsida \nOrder: Asterales \nFamily:	Asteraceae \nTribe: Heliantheae \nGenus: Helianthus \n\n "),
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
                height: 210,
                child: Material(
                  elevation: 30,
                  shadowColor: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(30),
                  child: Column(
                    children: [
                      Container(
                        width: 350,
                        child: Text(
                          "\nThe sunflower (Helianthus annuus) is a living annual plant in the family Asteraceae, with a large flower head (capitulum). The stem of the flower can grow up to 3 metres tall, with a flower head that can be 30 cm wide. Other types of sunflowers include the California Royal Sunflower, which has a burgundy (red + purple) flower head. \nThe outer petal-bearing florets are the sterile florets and can be yellow, red, orange, or other colors. The florets inside the circular head are called disc florets, which mature into seeds.",
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
