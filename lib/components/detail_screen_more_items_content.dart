import 'package:flutter/material.dart';

class DetailScreenMoreItemsContent extends StatelessWidget{
	@override
	Widget build(BuildContext context) {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: <Widget>[
				Text(
					"More Items",
					style: TextStyle(
						color: Colors.black,
						fontSize: 16.0,
						fontWeight: FontWeight.bold,
					),
				),
				Flexible(
					flex: 1,
					child: Padding(
						padding: EdgeInsets.only(top: 10.0),
						child: Container(
							color: Colors.blue,
						),
					),
				),
			],
		);
	}
}
