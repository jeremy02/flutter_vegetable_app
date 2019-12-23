import 'package:flutter/material.dart';

class HomeScreenContent extends StatelessWidget{
	
	@override
	Widget build(BuildContext context) {
		return Stack(
				fit: StackFit.expand,
				children: <Widget>[
					Column(
						children: <Widget>[
							Padding(
								padding: EdgeInsets.symmetric(
									vertical: MediaQuery.of(context).size.height/12,
								),
								child: Text(
									"Vegetable",
									style: TextStyle(
										fontSize: 20.0,
										color: Colors.white,
										fontWeight: FontWeight.bold,
										letterSpacing: 1.2,
									),
								),
							),
							Flexible(
								flex: 1,
								child: Container(
									margin: EdgeInsets.only(
										bottom: 16,
										right: 16,
										left: 16,
									),
									decoration: BoxDecoration(
										color: Colors.orange
									),
								),
							),
						],
					)
				],
			);
	}
}