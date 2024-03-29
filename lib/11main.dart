import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imageclassification/classifier.dart';
import 'package:imageclassification/classifier_quant.dart';
import 'package:imageclassification/flowerdiscript/rose_detail.dart';
import 'package:imageclassification/flowerdiscript/tulip_detail.dart';
import 'package:logger/logger.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

import 'flowerdiscript/daisy_detail.dart';
import 'flowerdiscript/dandelion_detail.dart';
import 'flowerdiscript/sunflower_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Classification',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Image Classify'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Classifier _classifier;
  PageController _pageController = PageController();
  var logger = Logger();

  File? _image;
  final picker = ImagePicker();

  Image? _imageWidget;

  img.Image? fox;

  Category? category;

  @override
  void initState() {
    super.initState();
    _classifier = ClassifierQuant();
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile!.path);
      _imageWidget = Image.file(_image!);

      _predict();
    });
  }

  Future cImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile!.path);
      _imageWidget = Image.file(_image!);

      _predict();
    });
  }

  void _predict() async {
    img.Image imageInput = img.decodeImage(_image!.readAsBytesSync())!;
    var pred = _classifier.predict(imageInput);

    setState(() {
      this.category = pred;
    });
  }

  //int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MERO BAGAICHA ', style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      /* bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.rounded_corner),
              title: Text('Flower'),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('About'),
              backgroundColor: Colors.redAccent),
        ],
        //programmingaddict

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Center(
              child: _image == null
                  ? Text('No image selected.')
                  : Container(
                      constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height / 2),
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: _imageWidget,
                    ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              category != null ? category!.label : '',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              category != null
                  ? 'Confidence: ${category!.score.toStringAsFixed(3)}'
                  : '',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Column(
                children: [
                  if (category != null && category!.score < 0.57) ...{
                    Text(
                      '                              Warning!!! \n Please feed the clean image & try again .',
                      style: TextStyle(
                          color: Colors.redAccent, fontWeight: FontWeight.bold),
                    ),
                  }
                ],
              ),
            ),
            Center(
              child: Row(
                children: [
                  if (category != null && category!.label == "Rose") ...{
                    SizedBox(
                      width: 150,
                    ),
                    //  RaisedButton.icon(onPressed: (){_pageController.an}, icon: Icon(Icons.ac_unit_sharp), label: Text("MORE DETAIL"))
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const rose_detail()),
                          );
                        },
                        icon: Icon(Icons.add_alert),
                        label: Text("detail"))
                  }
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  if (category != null && category!.label == "Tulip") ...{
                    Text(
                      '                             ',
                      style: TextStyle(
                          color: Colors.redAccent, fontWeight: FontWeight.bold),
                    ),
                  }
                ],
              ),
            ),
            Center(
              child: Row(
                children: [
                  if (category != null && category!.label == "Tulip") ...{
                    SizedBox(
                      width: 150,
                    ),
                    //  RaisedButton.icon(onPressed: (){_pageController.an}, icon: Icon(Icons.ac_unit_sharp), label: Text("MORE DETAIL"))
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const tulip_detail()),
                          );
                        },
                        icon: Icon(Icons.add_alert),
                        label: Text("detail"))
                  }
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  if (category != null && category!.label == "Daisy") ...{
                    Text(
                      '                        ',
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  }
                ],
              ),
            ),
            Center(
              child: Row(
                children: [
                  if (category != null && category!.label == "Daisy") ...{
                    SizedBox(
                      width: 150,
                    ),
                    //  RaisedButton.icon(onPressed: (){_pageController.an}, icon: Icon(Icons.ac_unit_sharp), label: Text("MORE DETAIL"))
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const daisy_detail()),
                          );
                        },
                        icon: Icon(Icons.add_alert),
                        label: Text("detail"))
                  }
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  if (category != null && category!.label == "Dandelion") ...{
                    Text(
                      '                            ',
                      style: TextStyle(
                          color: Colors.green[500],
                          fontWeight: FontWeight.bold),
                    ),
                  }
                ],
              ),
            ),
            Center(
              child: Row(
                children: [
                  if (category != null && category!.label == "Dandelion") ...{
                    SizedBox(
                      width: 150,
                    ),
                    //  RaisedButton.icon(onPressed: (){_pageController.an}, icon: Icon(Icons.ac_unit_sharp), label: Text("MORE DETAIL"))
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const dandelion_detail()),
                          );
                        },
                        icon: Icon(Icons.add_alert),
                        label: Text("detail"))
                  }
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  if (category != null && category!.label == "Sunflower") ...{
                    Text(
                      '                              .',
                      style: TextStyle(
                          color: Colors.redAccent, fontWeight: FontWeight.bold),
                    ),
                  }
                ],
              ),
            ),
            Center(
              child: Row(
                children: [
                  if (category != null && category!.label == "Sunflower") ...{
                    SizedBox(
                      width: 150,
                    ),
                    //  RaisedButton.icon(onPressed: (){_pageController.an}, icon: Icon(Icons.ac_unit_sharp), label: Text("MORE DETAIL"))
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sunflower_detail()),
                          );
                        },
                        icon: Icon(Icons.add_alert),
                        label: Text("detail"))
                  }
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    OutlineButton(
                      onPressed: cImage,
                      highlightedBorderColor: Colors.orange,
                      highlightElevation: 10.0,
                      color: Colors.white,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder(),
                      child: Icon(
                        Icons.camera_alt,
                        size: 35,
                        color: Colors.orange,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "Take Photo",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                SizedBox(width: 60),
                Column(
                  children: [
                    OutlineButton(
                      onPressed: getImage,
                      highlightedBorderColor: Colors.blue[800],
                      highlightElevation: 10.0,
                      color: Colors.white,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder(),
                      child: Icon(
                        Icons.image,
                        size: 35,
                        color: Colors.blue[800],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "Gallary",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //  onPressed: getImage,
      //  tooltip: 'Pick Image',
      //   child: Icon(Icons.add_a_photo),
      // ),
    );
  }
}
