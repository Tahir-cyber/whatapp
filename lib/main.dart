// @dart=2.9
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screen/CameraSCreen.dart';
import 'package:whatsapp_clone/Screen/home_screen.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primaryColor: Color(0xFF075E54),
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
