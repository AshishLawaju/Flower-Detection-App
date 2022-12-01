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
      "price": "Sunlight : high",
      "image":
          "https://images.unsplash.com/photo-1634600587068-4b8c840c3d8d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
    },
    {
      "title": "Daisy",
      "price": "\$243",
      "image":
          "https://images.unsplash.com/photo-1561997896-49c20aba9404?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZGFpc3klMjBmbG93ZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
    },
    {
      "title": "Sunflower",
      "price": "\$243",
      "image":
          "https://images.unsplash.com/photo-1634600587068-4b8c840c3d8d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
    },
    {
      "title": "Sunflower",
      "price": "\$243",
      "image":
          "https://images.unsplash.com/photo-1634600587068-4b8c840c3d8d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
    },
    {
      "title": "Sunflower",
      "price": "\$243",
      "image":
          "https://images.unsplash.com/photo-1634600587068-4b8c840c3d8d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
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
              mainAxisExtent: 340),
          itemCount: gridMap.length,
          itemBuilder: (_, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.greenAccent.shade200,
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
                            Icon(Icons.safety_divider),
                            Text("${gridMap.elementAt(index)['price']}",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .merge(const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.yellow))),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.water_sharp),
                            ),
                            Text("High"),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.wb_sunny)),
                            Text("Low"),
                          ],
                        ),
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
