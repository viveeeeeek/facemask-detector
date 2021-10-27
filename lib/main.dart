import 'package:camera/camera.dart';
import 'package:facemaskdetector/homepage.dart';
import 'package:flutter/material.dart';
List<CameraDescription>? cameras;


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Face Mask Detector',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      home: HomePage()
    );
  }
}
