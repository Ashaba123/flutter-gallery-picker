import 'package:flutter/material.dart';
import 'package:flutter_gallery_picker/flutter_gallery_picker.dart';
import 'package:gallery/my_gallery_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyGalleryScreen(),
    );
  }
}