import 'package:flutter/material.dart';
import 'package:gallery/gallery_screen.dart';
import 'package:gallery/utils.dart';
import 'package:photo_manager/photo_manager.dart';

class MyGalleryScreen extends StatefulWidget {
  const MyGalleryScreen({super.key});

  @override
  State<MyGalleryScreen> createState() => _MyGalleryScreenState();
}

class _MyGalleryScreenState extends State<MyGalleryScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whitecolor,
        centerTitle: true,
        title: const Text(
          "Gallery",
          style: TextStyle(color: blackcolor),
        ),
        iconTheme: const IconThemeData(color: blackcolor),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            // make the function async
            onPressed: () async {
              // ### Add the next 2 lines ###
              final permisionState =
                  await PhotoManager.requestPermissionExtend();
              if (!permisionState.hasAccess) return;

              // ignore: use_build_context_synchronously
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => Gallery()),
              );
            },
            child: const Text('Open Gallery'),
          ),
        ),
      ),
    );
  }
}
