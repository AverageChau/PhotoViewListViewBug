import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PhotoViewGallery(
        pageOptions: [
          PhotoViewGalleryPageOptions.customChild(
            minScale: 1.0,
            child: Container(
              color: Colors.grey,
              child: ListView(
                children: [
                  Image.asset(
                    'assets/image_sample.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/image_sample.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/image_sample.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
