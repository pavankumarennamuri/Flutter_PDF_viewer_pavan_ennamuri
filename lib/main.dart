import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:srmap/pdfViewerPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String filePath;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PdfViewerPage(),
    );
  }
}
