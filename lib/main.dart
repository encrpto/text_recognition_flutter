import 'package:firebase_ml_text_recognition/widget/text_recognition_widget.dart';
import 'package:flutter/material.dart';

import 'widget/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'I Mariners';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: HomePage(title: title),
      );
}

