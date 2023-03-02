import 'package:flutter/material.dart';

class tulip_detail extends StatelessWidget {
  const tulip_detail({Key? key}) : super(key: key);

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
                "Tulip",
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
                          "https://images.unsplash.com/photo-1524295153903-7d7a56f0581d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTd8MzE2MzYyNXx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
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
                height: 120,
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
                          "\nScientific name: Tulipa \nHigher classification: Lilioideae \nFamily: Liliaceae \nKingdom: Plantae \nOrder: Liliales \nTribe: Lilieae \n "),
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
                height: 130,
                child: Material(
                  elevation: 30,
                  shadowColor: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(30),
                  child: Column(
                    children: [
                      Container(
                        width: 350,
                        child: Text(
                          "\nTulips are a genus of spring-blooming perennial herbaceous bulbiferous geophytes. The flowers are usually large, showy and brightly coloured, generally red, pink, yellow, or white. They often have a different coloured blotch at the base of the tepals, internally.",
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
