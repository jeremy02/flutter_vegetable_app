import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vegetable_app/components/bottom_background.dart';
import 'package:flutter_vegetable_app/components/home_screen_content.dart';
import 'package:flutter_vegetable_app/components/top_background.dart';

class HomeScreen extends StatelessWidget{
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.white,
			body: Stack(
				children: <Widget>[
					Positioned(
						top: 0,
						child: Container(
							color: Colors.white,
							width: MediaQuery.of(context).size.width,
							child: TopBackground(),
						),
					),
					Positioned(
						bottom: 0,
						child: Container(
							color: Colors.white,
							width: MediaQuery.of(context).size.width,
							height: MediaQuery.of(context).size.height/5,
							child: BottomBackground(),
						),
					),
					HomeScreenContent(
						textTitle : "Vegetable App",
					),
				],
			),
		);
	}
}