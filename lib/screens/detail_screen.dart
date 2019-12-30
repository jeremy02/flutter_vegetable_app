import 'package:flutter/material.dart';
import 'package:flutter_vegetable_app/components/top_background.dart';

class DetailScreen extends StatelessWidget{
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.white,
			body: Stack(
				children: <Widget>[
					Align(
						alignment: Alignment.topLeft,
						child: Container(
							color: Colors.white,
							width: MediaQuery.of(context).size.width,
							child: TopBackground(),
						),
					),
					Column(
						crossAxisAlignment: CrossAxisAlignment.center,
						children: <Widget>[
							Padding(
								padding: EdgeInsets.only(
									top: MediaQuery.of(context).size.height/12,
									bottom: MediaQuery.of(context).size.height/27,
								),
								child: Center(
									child: Text(
										"Detail",
										style: TextStyle(
											fontSize: 20.0,
											color: Colors.white,
											fontWeight: FontWeight.bold,
											letterSpacing: 1.2,
										),
									),
								)
							),
							Flexible(
								flex: 2,
								child: Card(
									margin: EdgeInsets.symmetric(
										horizontal: 30.0,
									),
									shape: RoundedRectangleBorder(
										borderRadius: BorderRadius.all(Radius.circular(20.0)),
									),
									child: Container(
										decoration: BoxDecoration(
											color: Colors.white54,
											borderRadius: BorderRadius.all(Radius.circular(20.0)),
										),
									),
								),
							),
							Flexible(
								flex: 1,
								child: Container(
									margin: EdgeInsets.all(16.0),
									decoration: BoxDecoration(
										color: Colors.red,
									),
								),
							),
						],
					),
				],
			),
		);
	}
}