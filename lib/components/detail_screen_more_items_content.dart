import 'package:flutter/material.dart';
import 'package:flutter_vegetable_app/widgets/more_item.dart';

class DetailScreenMoreItemsContent extends StatelessWidget{
	@override
	Widget build(BuildContext context) {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: <Widget>[
				Padding(
					padding: EdgeInsets.only(bottom: 8.0),
					child: Text(
						"More Items",
						style: TextStyle(
							color: Colors.black,
							fontSize: 16.0,
							fontWeight: FontWeight.bold,
						),
					),
				),
				Flexible(
					flex: 1,
					child: ListView.builder(
						scrollDirection: Axis.horizontal,
						itemCount: 6,
						itemBuilder: (context, index) =>
							MoreItem(),
					),
				),
			],
		);
	}
}
