import 'package:flutter/material.dart';

class daisy_detail extends StatelessWidget {
  const daisy_detail({Key? key}) : super(key: key);

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
                "Daisy",
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
                          "https://images.unsplash.com/photo-1600264195762-c10ff160b264?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZGFpc3l8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
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
                height: 88,
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
                          "\nScientific name: Bellis perennis \nFamily: Asteraceae \nKingdom: Plantae \nOrder: Asterales\n\n "),
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
                height: 105,
                child: Material(
                  elevation: 30,
                  shadowColor: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(30),
                  child: Column(
                    children: [
                      Container(
                        width: 350,
                        child: Text(
                          "\nBellis perennis, the daisy, is a European species of the family Asteraceae, often considered the archetypal species of the name daisy. To distinguish this species from other plants known as daisies, it is sometimes qualified as common daisy, lawn daisy or English daisy.",
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
