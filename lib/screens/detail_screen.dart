import 'package:flutter/material.dart';
import 'package:flutter_vegetable_app/components/detail_screen_main_content.dart';
import 'package:flutter_vegetable_app/components/detail_screen_more_items_content.dart';
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
								flex: 1,
								child: Padding(
									padding: EdgeInsets.symmetric(horizontal: 26.0),
									child: DetailScreenMainContent()
								),
							),
							Container(
								height: MediaQuery.of(context).size.height*0.20,
								margin: EdgeInsets.symmetric(
									vertical: 10.0,
									horizontal: 16.0,
								),
								child: DetailScreenMoreItemsContent(),
							),
						],
					),
				],
			),
		);
	}
}