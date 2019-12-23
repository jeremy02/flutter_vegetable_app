import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
							color: Color.fromRGBO(235, 74, 66, 1.0),
							width: MediaQuery.of(context).size.width,
							height: MediaQuery.of(context).size.height/4,
						),
					),
					
					Positioned(
						bottom: 0,
						child: Container(
							color: Color.fromRGBO(255, 209, 50, 1.0),
							width: MediaQuery.of(context).size.width,
							height: MediaQuery.of(context).size.height/4,
						),
					),
				],
			)
		);
	}
}