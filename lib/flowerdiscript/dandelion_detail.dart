import 'package:flutter/material.dart';

class dandelion_detail extends StatelessWidget {
  const dandelion_detail({Key? key}) : super(key: key);

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
                "Dandelion",
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
                      width: 21,
                    ),
                    Material(
                      elevation: 30,
                      borderRadius: BorderRadius.circular(20),
                      shadowColor: Colors.greenAccent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/TaraxacumOfficinaleSeed.JPG/1280px-TaraxacumOfficinaleSeed.JPG",
                          height: 370,
                          width: 370,
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
                height: 195,
                child: Material(
                  elevation: 30,
                  shadowColor: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                          "\nKingdom: Plantae \nClade: Tracheophytes\n Clade: Angiosperms\nClade: Eudicots\nClade: Asterids\nOrder: Asterales\nFamily:	Asteraceae\nSubfamily: Cichorioideae\nTribe: Cichorieae\nSubtribe: Crepidinae\nGenus: Taraxacum\n \n "),
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
                height: 190,
                child: Material(
                  elevation: 30,
                  shadowColor: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(30),
                  child: Column(
                    children: [
                      Container(
                        width: 350,
                        child: Text(
                          "\nTaraxacum  is a large genus of flowering plants in the family Asteraceae, which consists of species commonly known as dandelions. The scientific and hobby study of the genus is known as taraxacology.The genus is native to Eurasia and North America.\nIn general, the leaves are 50–250 millimetres (2–10 in) long or longer, simple, lobed-to-pinnatisect, and form a basal rosette above the central taproot. The flower heads are yellow to orange coloured, and are open in the daytime, but closed at night ",
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
