import 'package:flutter/material.dart';

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Sunflower",
      "sun": "Direct Sun",
      "water": "Once per week",
      "image":
          "https://images.unsplash.com/photo-1634600587068-4b8c840c3d8d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
    },
    {
      "title": "Daisy",
      "sun": "Direct Sun",
      "water": "Once per week",
      "image":
          "https://images.unsplash.com/photo-1561997896-49c20aba9404?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZGFpc3klMjBmbG93ZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
    },
    {
      "title": "Tulip",
      "sun": "Full Sun",
      "water": "Once per week",
      "image":
          "https://images.unsplash.com/photo-1468327768560-75b778cbb551?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dHVsaXB8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
    },
    {
      "title": "Dandelion",
      "sun": "Full Sun",
      "water": "Regularly",
      "image":
          "https://images.unsplash.com/photo-1544954412-78da2cfa1a0c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZGFuZGVsaW9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
    },
    {
      "title": "Rose",
      "sun": "Direct Sun",
      "water": "Twice per week",
      "image":
          "https://images.unsplash.com/photo-1496062031456-07b8f162a322?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cm9zZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12,
              mainAxisExtent: 270),
          itemCount: gridMap.length,
          itemBuilder: (_, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.teal.shade100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16)),
                      child: Image.network(
                        "${gridMap.elementAt(index)['image']}",
                        height: 170,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${gridMap.elementAt(index)['title']}",
                            style: Theme.of(context).textTheme.subtitle1!.merge(
                                const TextStyle(fontWeight: FontWeight.w700))),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Icon(Icons.wb_sunny),
                            Text("${gridMap.elementAt(index)['sun']}",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .merge(const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.yellowAccent))),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.water),
                            Text("${gridMap.elementAt(index)['water']}",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .merge(const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.lightBlue))),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
