import 'package:flutter/material.dart';

class MoreItem extends StatelessWidget{
	@override
	Widget build(BuildContext context) {
		return Padding(
			padding: EdgeInsets.only(right: 6.0,bottom: 16.0),
			child: Card(
				color: Colors.white,
				shape: RoundedRectangleBorder(
					borderRadius: BorderRadius.all(Radius.circular(8.0)),
				),
				child: InkWell(
					borderRadius: BorderRadius.all(Radius.circular(8.0)),
					onTap: (){
						// go to detail screen
					},
					child: Container(
						width: MediaQuery.of(context).size.width/4.4,
						child: Center(
							child: Image.asset(
								"assets/images/fresh_onion.jpg",
								fit: BoxFit.cover,
							),
						)
					),
				),
				elevation: 8.0,
			),
		);
	}
}