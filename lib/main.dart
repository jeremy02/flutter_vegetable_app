import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vegetable_app/screens/splash_screen.dart';

void main() async{
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    @override
    void initState() {
        super.initState();
        SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarColor: Color.fromRGBO(235, 74, 66, 1.0),
            statusBarIconBrightness: Brightness.dark,
        ));
  }
  
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Vegetable App",
            theme: ThemeData(
                // This is the theme of you
                primarySwatch: Colors.red,
            ),
            home: SplashScreen(),
        );
    }
}