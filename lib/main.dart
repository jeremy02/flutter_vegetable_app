import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vegetable_app/screens/splash_screen.dart';

void main() async{
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
        runApp(MyApp());
    });
}

class MyApp extends StatelessWidget {
    @override
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Vegetable App",
            theme: ThemeData(
                // This is the theme of you
                primarySwatch: Colors.red,
                fontFamily: 'Softelegance',
            ),
            home: SplashScreen(),
        );
    }
}